# Natychmiastowa teleportacja: Deep Dark. Do testów i nagrywania, działa też w kreatywnym.
# /function dtp:now/deep_dark   albo   /execute as <gracz> at @s run function dtp:now/deep_dark
scoreboard players set @s dtp.next 9
execute as @s[type=minecraft:player] at @s run function dtp:teleport
