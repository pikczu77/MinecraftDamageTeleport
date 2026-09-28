# Następne obrażenie = Overworld.
# /function dtp:next/overworld   albo   /execute as <gracz> run function dtp:next/overworld
scoreboard players set @s dtp.next 5
tellraw @s [{"text":"[Damage TP] ","color":"light_purple","bold":true},{"text":"Następne obrażenie: ","color":"gray","bold":false},{"text":"Overworld","color":"green","bold":true}]
