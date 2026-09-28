# Następne obrażenie = środek oceanu.
# /function dtp:next/ocean   albo   /execute as <gracz> run function dtp:next/ocean
scoreboard players set @s dtp.next 8
tellraw @s [{"text":"[Damage TP] ","color":"light_purple","bold":true},{"text":"Następne obrażenie: ","color":"gray","bold":false},{"text":"środek oceanu","color":"blue","bold":true}]
