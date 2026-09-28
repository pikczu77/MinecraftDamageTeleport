# Następne obrażenie = Deep Dark.
# /function dtp:next/deep_dark   albo   /execute as <gracz> run function dtp:next/deep_dark
scoreboard players set @s dtp.next 9
tellraw @s [{"text":"[Damage TP] ","color":"light_purple","bold":true},{"text":"Następne obrażenie: ","color":"gray","bold":false},{"text":"Deep Dark","color":"dark_aqua","bold":true}]
