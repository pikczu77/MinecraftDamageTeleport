# Wykonywane "as" gracz, zaraz po wylądowaniu.
# Creeper staje 2 kratki za plecami gracza, jeśli jest tam miejsce (i wczytany chunk);
# w przeciwnym razie dokładnie w miejscu gracza - to miejsce zawsze jest dobre.
scoreboard players set #bud dtp 0
execute at @s rotated ~ 0 positioned ^ ^ ^-2 align xz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #dtp:passable if block ~ ~1 ~ #dtp:passable unless block ~ ~-1 ~ #dtp:not_ground run function dtp:creeper_spawn
execute if score #bud dtp matches 0 at @s run function dtp:creeper_spawn
