# Natychmiastowa teleportacja: losowe miejsce. Do testów i nagrywania, działa też w kreatywnym.
# /function dtp:now/teleport   albo   /execute as <gracz> at @s run function dtp:now/teleport
scoreboard players set @s dtp.next 1
execute as @s[type=minecraft:player] at @s run function dtp:teleport
