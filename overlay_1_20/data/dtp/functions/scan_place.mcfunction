# Drugie przejście: te same testy co przy liczeniu (muszą być identyczne!),
# ale zmniejszamy licznik celu i zatrzymujemy się na właściwym miejscu.
execute if score #done dtp matches 0 if score #mode dtp matches 0 if block ~ ~ ~ #dtp:passable if block ~ ~1 ~ #dtp:passable unless block ~ ~-1 ~ #dtp:not_ground run function dtp:hit
execute if score #done dtp matches 0 if score #mode dtp matches 1 if block ~ ~-1 ~ #dtp:lava_pit if block ~ ~-2 ~ #dtp:lava_pit if block ~ ~ ~ #dtp:dry if block ~ ~1 ~ #dtp:dry if block ~ ~2 ~ #dtp:dry if block ~ ~3 ~ #dtp:dry if block ~ ~4 ~ #dtp:dry run function dtp:hit
execute if score #done dtp matches 0 if score #mode dtp matches 2 if block ~ ~ ~ #dtp:dry if block ~ ~1 ~ #dtp:dry unless block ~ ~-1 ~ #dtp:not_ground if biome ~ ~ ~ minecraft:deep_dark run function dtp:hit

scoreboard players remove #y dtp 1
execute if score #done dtp matches 0 if score #y dtp >= #ymin dtp positioned ~ ~-1 ~ run function dtp:scan_place
