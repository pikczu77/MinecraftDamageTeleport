# Natychmiastowa teleportacja: Nether. Do testów i nagrywania, działa też w kreatywnym.
# /function dtp:now/nether   albo   /execute as <gracz> at @s run function dtp:now/nether
scoreboard players set @s dtp.next 4
execute as @s[type=minecraft:player] at @s run function dtp:teleport
