# Descend la colonne bloc par bloc et compte les emplacements ou l'on peut tenir debout :
#   - de la place pour les pieds et la tete (air, eau, herbe, torche...)
#   - un bloc solide dessous, qui ne soit ni de la lave ni un bloc qui blesse
execute if block ~ ~ ~ #dtp:passable if block ~ ~1 ~ #dtp:passable unless block ~ ~-1 ~ #dtp:not_ground run scoreboard players add #count dtp 1

scoreboard players remove #y dtp 1
execute if score #y dtp >= #ymin dtp positioned ~ ~-1 ~ run function dtp:scan_count
