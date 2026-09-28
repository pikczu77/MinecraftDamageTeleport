# Kasuje wymuszone zdarzenie: następne obrażenie znów losuje wg wag.
# /function dtp:next/any   albo   /execute as <gracz> run function dtp:next/any
scoreboard players set @s dtp.next 0
tellraw @s [{"text":"[Damage TP] ","color":"light_purple","bold":true},{"text":"Następne obrażenie: ","color":"gray","bold":false},{"text":"losowe zdarzenie","color":"yellow","bold":true}]
