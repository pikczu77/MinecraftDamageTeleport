# NIEBO: losowe miejsce jak przy zwykłym teleporcie, tylko sky_height kratek nad ziemią.
data modify storage dtp:tmp radius set from storage dtp:config radius

# spreadplayers losuje X/Z i stawia gracza na najwyższym bloku kolumny
# (nigdy na wodzie ani lawie). Stamtąd teleport w górę.
function dtp:spread with storage dtp:tmp
execute if score #sky_save dtp matches 2 run function dtp:sky_prepare
execute at @s run function dtp:sky_up with storage dtp:config

execute if score #sky_save dtp matches 1 run function dtp:sky_bucket
function dtp:arrived
