# Jedna próba = jedna losowa kolumna. Wykonywane "as"/"at" gracza w punkcie startu.
# Bez "return run" (1.20.2): gałęzie wykluczają się przez #count, jak w dtp:attempt.
scoreboard players add #tries dtp 1
scoreboard players set #count dtp 0

# "under 62": spreadplayers patrzy tylko poniżej poziomu morza, więc nie odrzuca kolumn
# z wodą na górze (normalnie zawsze wybiera ląd). Przy okazji wczytuje chunk.
function dtp:spread_ocean with storage dtp:tmp

execute if score #tries dtp <= #max_tries dtp at @s if biome ~ 62 ~ #minecraft:is_deep_ocean if block ~ 62 ~ minecraft:water if block ~ 63 ~ minecraft:air run scoreboard players set #count dtp 1
execute if score #tries dtp > #max_tries dtp at @s if biome ~ 62 ~ #minecraft:is_ocean if block ~ 62 ~ minecraft:water if block ~ 63 ~ minecraft:air run scoreboard players set #count dtp 1

execute if score #count dtp matches 0 run function dtp:ocean_retry
execute if score #count dtp matches 1.. at @s run function dtp:ocean_land
