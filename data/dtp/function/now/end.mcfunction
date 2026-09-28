# Natychmiastowa teleportacja: End. Do testów i nagrywania, działa też w kreatywnym.
# /function dtp:now/end   albo   /execute as <gracz> at @s run function dtp:now/end
scoreboard players set @s dtp.next 6
execute as @s[type=minecraft:player] at @s run function dtp:teleport
