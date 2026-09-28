# Przejście 1: liczy miejsca w kolumnie gracza, w których da się stanąć.
# Wykonywane "as"/"at" gracza, po spreadplayers.
function dtp:bounds
scoreboard players operation #y dtp = #ymax dtp
function dtp:goto_count with storage dtp:tmp
