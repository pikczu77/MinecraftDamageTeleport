# Gracz wytrzymał roof_time na dachu: zwykły teleport w dół, w losowe miejsce w Netherze.
tag @s remove dtp.onroof
title @s actionbar {"text":"Dobra, dobra... schodzisz.","color":"yellow"}
scoreboard players set @s dtp.next 1
function dtp:teleport
