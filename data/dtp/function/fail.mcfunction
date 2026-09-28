# Aucune colonne exploitable apres max_tries tirages : on ramene le joueur a son
# point de depart (spreadplayers l'a deja deplace) et on raccourcit le cooldown.
execute at @e[type=minecraft:marker,tag=dtp.origin,limit=1] run tp @s ~ ~ ~
title @s actionbar {"text":"Damage TP : aucun endroit sur trouve, tu restes ici","color":"red"}
scoreboard players set @s dtp 20
