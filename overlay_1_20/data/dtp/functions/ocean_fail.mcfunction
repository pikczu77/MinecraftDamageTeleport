# W zasięgu nie ma oceanu: wracamy do punktu startu i robimy zwykły teleport.
scoreboard players set #ofound dtp 1
execute at @e[type=minecraft:marker,tag=dtp.origin,limit=1] run tp @s ~ ~ ~
scoreboard players set #tries dtp 0
scoreboard players set @s dtp.ev 1
execute at @e[type=minecraft:marker,tag=dtp.origin,limit=1] run function dtp:event/random
