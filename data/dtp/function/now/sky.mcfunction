# Natychmiastowa teleportacja: 1000 kratek w górę. Do testów i nagrywania, działa też w kreatywnym.
# /function dtp:now/sky   albo   /execute as <gracz> at @s run function dtp:now/sky
scoreboard players set @s dtp.next 2
execute as @s[type=minecraft:player] at @s run function dtp:teleport
