# W zasięgu nie ma Deep Darku: wracamy do punktu startu i robimy zwykły teleport.
execute at @e[type=minecraft:marker,tag=dtp.origin,limit=1] run tp @s ~ ~ ~
scoreboard players set #tries dtp 0
scoreboard players set #mode dtp 0
scoreboard players set @s dtp.ev 1
function dtp:event/random
