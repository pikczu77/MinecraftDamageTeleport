# Natychmiastowa teleportacja: lawa. Do testów i nagrywania, działa też w kreatywnym.
# /function dtp:now/lava   albo   /execute as <gracz> at @s run function dtp:now/lava
scoreboard players set @s dtp.next 3
execute as @s[type=minecraft:player] at @s run function dtp:teleport
