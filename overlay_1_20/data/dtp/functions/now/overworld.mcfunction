# Natychmiastowa teleportacja: Overworld. Do testów i nagrywania, działa też w kreatywnym.
# /function dtp:now/overworld   albo   /execute as <gracz> at @s run function dtp:now/overworld
scoreboard players set @s dtp.next 5
execute as @s[type=minecraft:player] at @s run function dtp:teleport
