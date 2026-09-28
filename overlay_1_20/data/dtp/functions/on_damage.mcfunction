# Execute "as" et "at" le joueur qui vient de prendre des degats.
# Variante 1.20.x : pas de "/return", on passe par un drapeau #go.

# On consomme le compteur immediatement, quoi qu'il arrive ensuite.
scoreboard players set @s dtp.damage 0

scoreboard players set #go dtp 1
execute unless data storage dtp:config {enabled:1} run scoreboard players set #go dtp 0
execute if score @s dtp matches 1.. run scoreboard players set #go dtp 0
execute if entity @s[gamemode=creative] run scoreboard players set #go dtp 0
execute if entity @s[gamemode=spectator] run scoreboard players set #go dtp 0

execute if score #go dtp matches 1 run function dtp:teleport
