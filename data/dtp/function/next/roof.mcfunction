# Następne obrażenie = dach Netheru.
# /function dtp:next/roof   albo   /execute as <gracz> run function dtp:next/roof
scoreboard players set @s dtp.next 7
tellraw @s [{"text":"[Damage TP] ","color":"light_purple","bold":true},{"text":"Następne obrażenie: ","color":"gray","bold":false},{"text":"dach Netheru","color":"dark_red","bold":true}]
