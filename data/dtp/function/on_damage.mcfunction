# Execute "as" et "at" le joueur qui vient de prendre des degats.

# On consomme le compteur immediatement, quoi qu'il arrive ensuite.
scoreboard players set @s dtp.damage 0

execute unless data storage dtp:config {enabled:1} run return 0
execute if score @s dtp matches 1.. run return 0
execute if entity @s[gamemode=creative] run return 0
execute if entity @s[gamemode=spectator] run return 0

function dtp:teleport
