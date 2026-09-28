# Skok do Overworldu (z Netheru współrzędne x8, z Endu bez zmian).
scoreboard players set #dimhop dtp 1
scoreboard players operation #fxd dtp = #fx_delay_dim dtp
data modify storage dtp:tmp radius set from storage dtp:config dim_radius
execute in minecraft:overworld run tp @s ~ 64 ~
execute at @s run function dtp:attempt
