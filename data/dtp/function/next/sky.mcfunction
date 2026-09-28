# Następne obrażenie = 1000 kratek w górę.
# /function dtp:next/sky   albo   /execute as <gracz> run function dtp:next/sky
scoreboard players set @s dtp.next 2
tellraw @s [{"text":"[Damage TP] ","color":"light_purple","bold":true},{"text":"Następne obrażenie: ","color":"gray","bold":false},{"text":"1000 kratek w górę","color":"aqua","bold":true}]
