# Co tick dla spadających (tag dtp.falling): czy to już wysokość spadochronu?
scoreboard players remove @s dtp.skyt 1
execute if score @s dtp.skyt matches ..0 run tag @s remove dtp.falling

execute store result score #py dtp run data get entity @s Pos[1]
execute if entity @s[tag=dtp.falling] if score #py dtp <= @s dtp.sky run function dtp:parachute
