# Choisit uniformement un des emplacements valides trouves dans la colonne,
# puis relance le scan pour aller le chercher. Execute "as"/"at" le joueur.
execute store result storage dtp:tmp n int 1 run scoreboard players get #count dtp
function dtp:roll_target with storage dtp:tmp

scoreboard players operation #y dtp = #ymax dtp
scoreboard players set #done dtp 0
function dtp:goto_place with storage dtp:tmp
