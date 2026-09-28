# Tryb spadochronu: szukamy najwyższego bloku w kolumnie nad graczem (gracz może
# stać w jaskini pod górą), spadochron otworzy się 64 kratki nad nim.
# Przy prędkości ~4 kratek/tick tyle wystarcza, żeby zwolnić przed ziemią.
function dtp:bounds
execute store result score #y dtp run data get entity @s Pos[1]
scoreboard players operation #top dtp = #y dtp
scoreboard players remove #top dtp 1
function dtp:sky_scan_top

scoreboard players operation @s dtp.sky = #top dtp
scoreboard players add @s dtp.sky 64

# Limit czasu spadania: po nim zapominamy o spadochronie (np. gracz wylądował wyżej)
scoreboard players operation @s dtp.skyt = #sky dtp
scoreboard players set #2 dtp 2
scoreboard players operation @s dtp.skyt /= #2 dtp
scoreboard players add @s dtp.skyt 200
