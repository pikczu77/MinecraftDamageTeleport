# Wykonywane "as" i "at" gracza, który właśnie dostał obrażenia.
# Bez "/return" (1.20.2 nie ma jeszcze "return run"), żeby jeden plik działał wszędzie: flaga #go.

# Licznik zużywamy od razu, cokolwiek stanie się dalej.
scoreboard players set @s dtp.damage 0

scoreboard players set #go dtp 1
execute unless data storage dtp:config {enabled:1} run scoreboard players set #go dtp 0
execute if score @s dtp matches 1.. run scoreboard players set #go dtp 0
execute if entity @s[gamemode=creative] run scoreboard players set #go dtp 0
execute if entity @s[gamemode=spectator] run scoreboard players set #go dtp 0

execute if score #go dtp matches 1 run function dtp:teleport
