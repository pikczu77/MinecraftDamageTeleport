# Następne obrażenie = losowe miejsce.
# /function dtp:next/teleport   albo   /execute as <gracz> run function dtp:next/teleport
scoreboard players set @s dtp.next 1
tellraw @s [{"text":"[Damage TP] ","color":"light_purple","bold":true},{"text":"Następne obrażenie: ","color":"gray","bold":false},{"text":"losowe miejsce","color":"light_purple","bold":true}]
