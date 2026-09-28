# Deuxieme passe : meme test qu'au comptage, mais on decremente le compteur cible
# et on s'arrete au bon emplacement.
execute if score #done dtp matches 0 if block ~ ~ ~ #dtp:passable if block ~ ~1 ~ #dtp:passable unless block ~ ~-1 ~ #dtp:not_ground run function dtp:hit

scoreboard players remove #y dtp 1
execute if score #done dtp matches 0 if score #y dtp >= #ymin dtp positioned ~ ~-1 ~ run function dtp:scan_place
