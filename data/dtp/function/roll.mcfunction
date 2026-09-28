# Losuje zdarzenie według wag z konfiguracji. Wynik w #ev:
#   1 = losowe miejsce, 2 = wysoko w niebo, 3 = nad lawę, 10 = inny wymiar,
#   7 = dach Netheru, 8 = środek oceanu, 9 = Deep Dark, 11 = creeper-towarzysz
execute store result score #w1 dtp run data get storage dtp:config w_random
execute store result score #w2 dtp run data get storage dtp:config w_sky
execute store result score #w3 dtp run data get storage dtp:config w_lava
execute store result score #w4 dtp run data get storage dtp:config w_dimension
execute store result score #w5 dtp run data get storage dtp:config w_roof
execute store result score #w6 dtp run data get storage dtp:config w_ocean
execute store result score #w7 dtp run data get storage dtp:config w_deep_dark
execute store result score #w8 dtp run data get storage dtp:config w_creeper
execute if score #w1 dtp matches ..-1 run scoreboard players set #w1 dtp 0
execute if score #w2 dtp matches ..-1 run scoreboard players set #w2 dtp 0
execute if score #w3 dtp matches ..-1 run scoreboard players set #w3 dtp 0
execute if score #w4 dtp matches ..-1 run scoreboard players set #w4 dtp 0
execute if score #w5 dtp matches ..-1 run scoreboard players set #w5 dtp 0
execute if score #w6 dtp matches ..-1 run scoreboard players set #w6 dtp 0
execute if score #w7 dtp matches ..-1 run scoreboard players set #w7 dtp 0
execute if score #w8 dtp matches ..-1 run scoreboard players set #w8 dtp 0

scoreboard players operation #total dtp = #w1 dtp
scoreboard players operation #total dtp += #w2 dtp
scoreboard players operation #total dtp += #w3 dtp
scoreboard players operation #total dtp += #w4 dtp
scoreboard players operation #total dtp += #w5 dtp
scoreboard players operation #total dtp += #w6 dtp
scoreboard players operation #total dtp += #w7 dtp
scoreboard players operation #total dtp += #w8 dtp

# Wszystkie wagi na 0 -> zwykły teleport
scoreboard players set #ev dtp 1
execute if score #total dtp matches 1.. run function dtp:roll_pick
