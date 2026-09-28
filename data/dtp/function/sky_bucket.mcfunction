# Wiadro wody na MLG, jeśli gracz jeszcze go nie ma
# (trafia na pierwsze wolne miejsce, zwykle na pasek szybkiego wyboru).
scoreboard players set #wb dtp 0
execute store result score #wb dtp run clear @s minecraft:water_bucket 0
execute if score #wb dtp matches 0 run give @s minecraft:water_bucket
