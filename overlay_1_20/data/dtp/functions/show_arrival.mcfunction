# Efekty przybycia, kilka ticków PO lądowaniu.
# Wysłane w tym samym ticku co teleport regularnie ginęły: klient dostaje skok
# o 2500 kratek i generowanie chunków, a pasek akcji (znika sam po ~3 s)
# wygasał za ekranem ładowania.
# Wykonywane "as"/"at" gracza.
scoreboard players set @s dtp.fx -1

execute store result score #lx dtp run data get entity @s Pos[0]
execute store result score #ly dtp run data get entity @s Pos[1]
execute store result score #lz dtp run data get entity @s Pos[2]

title @s actionbar [{"text":"Teleport #","color":"light_purple"},{"score":{"name":"@s","objective":"dtp.count"},"bold":true},{"text":"  → ","color":"gray"},{"score":{"name":"#lx","objective":"dtp"},"color":"white"},{"text":" "},{"score":{"name":"#ly","objective":"dtp"},"color":"white"},{"text":" "},{"score":{"name":"#lz","objective":"dtp"},"color":"white"}]
particle minecraft:reverse_portal ~ ~1 ~ 0.4 0.9 0.4 0.1 80 force

execute if score @s dtp.ev matches 1 run function dtp:arrival/random
execute if score @s dtp.ev matches 2 run function dtp:arrival/sky
execute if score @s dtp.ev matches 3 run function dtp:arrival/lava
execute if score @s dtp.ev matches 4 run function dtp:arrival/nether
execute if score @s dtp.ev matches 5 run function dtp:arrival/overworld
execute if score @s dtp.ev matches 6 run function dtp:arrival/end
