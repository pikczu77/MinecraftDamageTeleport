# Passe 1 : compte les emplacements ou l'on peut tenir debout dans la colonne du joueur.
# Execute "as"/"at" le joueur, apres le spreadplayers.
function dtp:bounds
scoreboard players operation #y dtp = #ymax dtp
function dtp:goto_count with storage dtp:tmp
