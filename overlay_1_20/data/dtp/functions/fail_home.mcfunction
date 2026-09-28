# Wracamy do punktu startu (spreadplayers już gracza przestawił) i skracamy cooldown.
execute at @e[type=minecraft:marker,tag=dtp.origin,limit=1] run tp @s ~ ~ ~
title @s actionbar {"text":"Damage TP: brak bezpiecznego miejsca, zostajesz tutaj","color":"red"}
scoreboard players set @s dtp 20
