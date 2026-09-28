# Gracz stoi jeszcze na ziemi w wylosowanym miejscu. Zapamiętujemy jej wysokość
# (w setnych częściach kratki) dla timera spadania i spadochronu.
execute store result score @s dtp.gy run data get entity @s Pos[1] 100

# Po teleporcie będzie sky_height kratek wyżej
scoreboard players operation @s dtp.py = #sky dtp
scoreboard players operation @s dtp.py *= #100 dtp
scoreboard players operation @s dtp.py += @s dtp.gy

# Brakująca prędkość do maksymalnej (3.92 kratki/tick), w 1/10000 kratki/tick.
# Start z miejsca: brakuje całych 3.92.
scoreboard players set @s dtp.acc 39200
scoreboard players set @s dtp.still 0
scoreboard players set @s dtp.sec 999
tag @s add dtp.falling

# Limit czasu spadania: po nim przestajemy śledzić gracza (np. odleciał na elytrze)
scoreboard players operation @s dtp.skyt = #sky dtp
scoreboard players operation @s dtp.skyt /= #2 dtp
scoreboard players add @s dtp.skyt 200
