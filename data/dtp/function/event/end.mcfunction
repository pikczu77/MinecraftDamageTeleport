# Skok do Endu, dokładnie jak przez portal: obsydianowa platforma 5x5
# na X=100, Z=0, gracz patrzy w stronę wyspy (i smoka).
execute in minecraft:the_end run tp @s 100.5 49 0.5 90 0

# fill działa tylko na wczytanych chunkach, a platforma leży na dwóch (Z<0 i Z>=0).
# spreadplayers wczytuje chunk od razu, w tym samym ticku - używamy go jako "ładowarki".
execute in minecraft:the_end run spreadplayers 100.5 -1.5 0 1 false @s
execute in minecraft:the_end run spreadplayers 100.5 1.5 0 1 false @s

execute in minecraft:the_end run fill 98 48 -2 102 48 2 minecraft:obsidian
execute in minecraft:the_end run fill 98 49 -2 102 51 2 minecraft:air
execute in minecraft:the_end run tp @s 100.5 49 0.5 90 0

scoreboard players operation #fxd dtp = #fx_delay_dim dtp
function dtp:arrived
