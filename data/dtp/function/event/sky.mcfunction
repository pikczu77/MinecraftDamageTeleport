# 1000 KRATEK W GÓRĘ: ta sama kolumna, tylko sky_height kratek wyżej.
# Spadochron musi znać wysokość terenu, więc liczymy ją przed skokiem.
execute if score #sky_save dtp matches 2 run function dtp:sky_prepare

function dtp:sky_up with storage dtp:config

execute if score #sky_save dtp matches 1 run function dtp:sky_bucket
execute if score #sky_save dtp matches 2 run tag @s add dtp.falling

# Ta sama kolumna = nic się nie doczytuje, napis może wejść od razu
scoreboard players set #fxd dtp 1
function dtp:arrived
