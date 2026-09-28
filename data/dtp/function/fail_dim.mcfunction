# Skok między wymiarami ma się udać zawsze. Brak gruntu w wylosowanych kolumnach
# -> mała kieszeń na Y=70 w ostatniej z nich, z obsydianem pod nogami.
execute at @s run tp @s ~ 70 ~
execute at @s run fill ~ ~ ~ ~ ~1 ~ minecraft:air
execute at @s run setblock ~ ~-1 ~ minecraft:obsidian
function dtp:arrived
