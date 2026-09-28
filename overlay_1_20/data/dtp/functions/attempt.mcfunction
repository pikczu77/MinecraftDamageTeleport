# Une tentative = une colonne tiree au sort, scannee de haut en bas.
# Execute "as"/"at" le joueur, la position du contexte restant le point de depart.
#
# Variante 1.20.x : "return run" n'existe pas encore, on garde donc les deux branches
# mutuellement exclusives grace a #count (dtp:retry le remet a 0 en sortant, sinon
# une tentative profonde reussie relancerait dtp:pick a chaque niveau du deroulement).

scoreboard players add #tries dtp 1
scoreboard players set #count dtp 0

# spreadplayers fait deux choses d'un coup : il tire le X/Z au hasard dans le rayon
# ET il force la generation du chunk vise. Un simple test de bloc a 2500 blocs
# ne garantit pas que le terrain existe deja.
function dtp:spread with storage dtp:config

# Le joueur a bouge : la position du contexte est obsolete, on se re-ancre sur lui.
execute at @s run function dtp:scan_column

# Colonne inexploitable (pleine, vide, ou uniquement de la lave) -> on retire au sort
execute if score #count dtp matches 0 run function dtp:retry

# Passe 2 : choisir un des emplacements valides et y atterrir
execute if score #count dtp matches 1.. at @s run function dtp:pick
