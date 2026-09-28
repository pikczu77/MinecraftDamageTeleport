# Schodzi kolumną blok po bloku i liczy miejsca, w których da się stanąć.
# Tryb 0 (zwykły):
#   - miejsce na stopy i głowę (powietrze, woda, trawa, pochodnia...)
#   - pod spodem coś stałego, co nie jest lawą ani blokiem, który rani
# Tryb 1 (lawa):
#   - pod spodem 2 kratki naturalnego gruntu (zrobimy z nich dół z lawą)
#   - 5 kratek suchego powietrza w górę (gracz pojawi się 3 kratki wyżej)
execute if score #mode dtp matches 0 if block ~ ~ ~ #dtp:passable if block ~ ~1 ~ #dtp:passable unless block ~ ~-1 ~ #dtp:not_ground run scoreboard players add #count dtp 1
execute if score #mode dtp matches 1 if block ~ ~-1 ~ #dtp:lava_pit if block ~ ~-2 ~ #dtp:lava_pit if block ~ ~ ~ #dtp:dry if block ~ ~1 ~ #dtp:dry if block ~ ~2 ~ #dtp:dry if block ~ ~3 ~ #dtp:dry if block ~ ~4 ~ #dtp:dry run scoreboard players add #count dtp 1

scoreboard players remove #y dtp 1
execute if score #y dtp >= #ymin dtp positioned ~ ~-1 ~ run function dtp:scan_count
