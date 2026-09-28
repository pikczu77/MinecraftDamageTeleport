# Co tick dla gracza spadającego z nieba (tag dtp.falling).
scoreboard players remove @s dtp.skyt 1
execute if score @s dtp.skyt matches ..0 run tag @s remove dtp.falling
execute if entity @s[tag=dtp.falling] run function dtp:sky_tick
