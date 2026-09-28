# Pozycja (setne części kratki) i prędkość spadania w tym ticku
execute store result score #py dtp run data get entity @s Pos[1] 100
scoreboard players operation #v dtp = @s dtp.py
scoreboard players operation #v dtp -= #py dtp
scoreboard players operation @s dtp.py = #py dtp

# W powietrzu Minecraft mnoży prędkość przez 0.98 co tick, więc brakująca prędkość
# do maksymalnej maleje o 2% z każdym tickiem spadania. Dopóki klient nie doczyta
# terenu, gracz wisi w miejscu, a timer stoi.
execute if score #v dtp matches 1.. run scoreboard players operation @s dtp.acc *= #49 dtp
execute if score #v dtp matches 1.. run scoreboard players operation @s dtp.acc /= #50 dtp

# Wysokość nad ziemią (setne części kratki)
scoreboard players operation #d dtp = #py dtp
scoreboard players operation #d dtp -= @s dtp.gy

# Stoi w miejscu blisko ziemi przez 5 ticków i żyje (śmierć zdejmuje tag): przeżył
execute if score #v dtp matches ..5 run scoreboard players add @s dtp.still 1
execute if score #v dtp matches 6.. run scoreboard players set @s dtp.still 0
execute if score @s dtp.still matches 5.. if score #d dtp matches ..4000 run function dtp:sky_landed

# Spadochron (sky_save 2) 64 kratki nad ziemią. Przy ~4 kratkach/tick tyle wystarcza,
# żeby zwolnić przed uderzeniem.
execute if entity @s[tag=dtp.falling] if data storage dtp:config {sky_save:2} if score #d dtp matches ..6400 run function dtp:parachute

execute if entity @s[tag=dtp.falling] run function dtp:sky_timer
