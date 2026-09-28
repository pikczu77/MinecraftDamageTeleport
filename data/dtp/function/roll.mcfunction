# Losuje zdarzenie według wag z konfiguracji. Wynik w #ev:
#   1 = losowe miejsce, 2 = 1000 kratek w górę, 3 = lawa, 10 = inny wymiar
execute store result score #w1 dtp run data get storage dtp:config w_random
execute store result score #w2 dtp run data get storage dtp:config w_sky
execute store result score #w3 dtp run data get storage dtp:config w_lava
execute store result score #w4 dtp run data get storage dtp:config w_dimension
execute if score #w1 dtp matches ..-1 run scoreboard players set #w1 dtp 0
execute if score #w2 dtp matches ..-1 run scoreboard players set #w2 dtp 0
execute if score #w3 dtp matches ..-1 run scoreboard players set #w3 dtp 0
execute if score #w4 dtp matches ..-1 run scoreboard players set #w4 dtp 0

scoreboard players operation #total dtp = #w1 dtp
scoreboard players operation #total dtp += #w2 dtp
scoreboard players operation #total dtp += #w3 dtp
scoreboard players operation #total dtp += #w4 dtp

# Wszystkie wagi na 0 -> zwykły teleport
scoreboard players set #ev dtp 1
execute if score #total dtp matches 1.. run function dtp:roll_pick
