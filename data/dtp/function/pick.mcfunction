# Wybiera losowo jedno z dobrych miejsc znalezionych w kolumnie
# i skanuje ją jeszcze raz, żeby do niego dojść. Wykonywane "as"/"at" gracza.
execute store result storage dtp:tmp n int 1 run scoreboard players get #count dtp
function dtp:roll_target with storage dtp:tmp

scoreboard players operation #y dtp = #ymax dtp
scoreboard players set #done dtp 0
function dtp:goto_place with storage dtp:tmp
