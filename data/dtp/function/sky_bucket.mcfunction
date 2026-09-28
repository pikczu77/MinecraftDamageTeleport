# Tryb MLG: wiadro wody, jeśli gracz jeszcze go nie ma.
scoreboard players set #wb dtp 0
execute store result score #wb dtp run clear @s minecraft:water_bucket 0
execute if score #wb dtp matches 0 run give @s minecraft:water_bucket
