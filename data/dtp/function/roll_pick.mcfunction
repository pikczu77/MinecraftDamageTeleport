# #r losowe z [0, suma wag), potem odejmujemy kolejne wagi:
# zdarzenie to to, na którym #r spada poniżej zera.
execute store result score #r dtp run random value 0..999999
scoreboard players operation #r dtp %= #total dtp

scoreboard players operation #r dtp -= #w1 dtp
execute if score #r dtp matches 0.. run scoreboard players set #ev dtp 2
scoreboard players operation #r dtp -= #w2 dtp
execute if score #r dtp matches 0.. run scoreboard players set #ev dtp 3
scoreboard players operation #r dtp -= #w3 dtp
execute if score #r dtp matches 0.. run scoreboard players set #ev dtp 10
scoreboard players operation #r dtp -= #w4 dtp
execute if score #r dtp matches 0.. run scoreboard players set #ev dtp 7
scoreboard players operation #r dtp -= #w5 dtp
execute if score #r dtp matches 0.. run scoreboard players set #ev dtp 8
scoreboard players operation #r dtp -= #w6 dtp
execute if score #r dtp matches 0.. run scoreboard players set #ev dtp 9
scoreboard players operation #r dtp -= #w7 dtp
execute if score #r dtp matches 0.. run scoreboard players set #ev dtp 11
