# Tryb spadochronu. Gracz stoi jeszcze na ziemi w wylosowanym miejscu:
# spadochron otworzy się 64 kratki nad nią. Przy prędkości ~4 kratek/tick
# tyle wystarcza, żeby zwolnić przed uderzeniem.
execute store result score @s dtp.sky run data get entity @s Pos[1]
scoreboard players add @s dtp.sky 64
tag @s add dtp.falling

# Limit czasu spadania: po nim zapominamy o spadochronie (np. gracz wylądował gdzie indziej)
scoreboard players operation @s dtp.skyt = #sky dtp
scoreboard players set #2 dtp 2
scoreboard players operation @s dtp.skyt /= #2 dtp
scoreboard players add @s dtp.skyt 200
