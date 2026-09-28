# Natychmiastowa teleportacja: środek oceanu. Do testów i nagrywania, działa też w kreatywnym.
# /function dtp:now/ocean   albo   /execute as <gracz> at @s run function dtp:now/ocean
scoreboard players set @s dtp.next 8
execute as @s[type=minecraft:player] at @s run function dtp:teleport
