# Start teleportacji. Wykonywane "as"/"at" gracza.

# Konfiguracja czytana na gorąco (zmiany działają od razu)
execute store result score #cooldown dtp run data get storage dtp:config cooldown
execute store result score #max_tries dtp run data get storage dtp:config max_tries
execute store result score #nether_top dtp run data get storage dtp:config nether_top_chance
execute store result score #fx_delay dtp run data get storage dtp:config fx_delay
execute store result score #fx_delay_dim dtp run data get storage dtp:config fx_delay_dim
execute store result score #lava_time dtp run data get storage dtp:config lava_time
execute store result score #sky dtp run data get storage dtp:config sky_height
execute store result score #sky_save dtp run data get storage dtp:config sky_save
execute store result score #end_chance dtp run data get storage dtp:config end_chance

scoreboard players operation @s dtp = #cooldown dtp
scoreboard players set @s dtp.fx -1
tag @s remove dtp.falling
scoreboard players set #tries dtp 0
scoreboard players set #mode dtp 0
scoreboard players set #dimhop dtp 0

# Losowanie zdarzenia -> #ev (albo zdarzenie wymuszone przez dtp:next/... lub dtp:now/...)
function dtp:roll
execute if score @s dtp.next matches 1.. run scoreboard players operation #ev dtp = @s dtp.next
scoreboard players set @s dtp.next 0
execute if score #ev dtp matches 10 run function dtp:roll_dimension
# Niebo tylko w Overworldzie: w Netherze nad głową jest bedrock, a w Endzie pod spodem
# zwykle pustka. Tam zamiast tego zwykły teleport.
execute if score #ev dtp matches 2 if predicate dtp:in_nether run scoreboard players set #ev dtp 1
execute if score #ev dtp matches 2 if predicate dtp:in_end run scoreboard players set #ev dtp 1
execute unless score #ev dtp matches 1..6 run scoreboard players set #ev dtp 1
scoreboard players operation @s dtp.ev = #ev dtp

# Znacznik punktu startu, żeby móc cofnąć gracza, jeśli nic nie znajdziemy
execute summon minecraft:marker run tag @s add dtp.origin

# Efekty w miejscu startu (słyszą je wszyscy w pobliżu)
particle minecraft:portal ~ ~1 ~ 0.4 0.9 0.4 0.05 60 force
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1

# Opóźnienie efektów przybycia; zdarzenia mogą je zmienić
scoreboard players operation #fxd dtp = #fx_delay dtp

execute if score #ev dtp matches 1 run function dtp:event/random
execute if score #ev dtp matches 2 run function dtp:event/sky
execute if score #ev dtp matches 3 run function dtp:event/lava
execute if score #ev dtp matches 4 run function dtp:event/nether
execute if score #ev dtp matches 5 run function dtp:event/overworld
execute if score #ev dtp matches 6 run function dtp:event/end

kill @e[type=minecraft:marker,tag=dtp.origin]
