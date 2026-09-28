# Dokładny czas do ziemi: symulacja reszty lotu tick po ticku (fizyka Minecrafta:
# ruch o prędkość, potem prędkość = (prędkość + 0.08) * 0.98). Jednostki: 1/10000 kratki.
scoreboard players operation #sd dtp = #d dtp
scoreboard players operation #sd dtp *= #100 dtp
scoreboard players set #sv dtp 39200
scoreboard players operation #sv dtp -= @s dtp.acc
scoreboard players set #t dtp 0
execute if score #sd dtp matches 1.. run function dtp:sky_sim
