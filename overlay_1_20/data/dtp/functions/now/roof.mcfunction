# Natychmiastowa teleportacja: dach Netheru. Do testów i nagrywania, działa też w kreatywnym.
# /function dtp:now/roof   albo   /execute as <gracz> at @s run function dtp:now/roof
scoreboard players set @s dtp.next 7
execute as @s[type=minecraft:player] at @s run function dtp:teleport
