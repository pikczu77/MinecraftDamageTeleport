# Przejście 1: liczy miejsca w kolumnie gracza, w których da się stanąć.
# Wykonywane "as"/"at" gracza, po spreadplayers.
function dtp:bounds
execute if score #mode dtp matches 2 run function dtp:bounds_deep_dark
scoreboard players operation #y dtp = #ymax dtp
function dtp:goto_count with storage dtp:tmp
