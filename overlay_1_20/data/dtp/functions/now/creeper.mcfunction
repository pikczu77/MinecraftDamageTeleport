# Natychmiastowa teleportacja: creeper-towarzysz. Do testów i nagrywania, działa też w kreatywnym.
# /function dtp:now/creeper   albo   /execute as <gracz> at @s run function dtp:now/creeper
scoreboard players set @s dtp.next 11
execute as @s[type=minecraft:player] at @s run function dtp:teleport
