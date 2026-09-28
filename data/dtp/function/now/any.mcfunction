# Natychmiastowa teleportacja z losowym zdarzeniem (wg wag). Do testów i nagrywania, działa też w kreatywnym.
# /function dtp:now/any   albo   /execute as <gracz> at @s run function dtp:now/any
scoreboard players set @s dtp.next 0
execute as @s[type=minecraft:player] at @s run function dtp:teleport
