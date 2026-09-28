# Następne obrażenie = Nether.
# /function dtp:next/nether   albo   /execute as <gracz> run function dtp:next/nether
scoreboard players set @s dtp.next 4
tellraw @s [{"text":"[Damage TP] ","color":"light_purple","bold":true},{"text":"Następne obrażenie: ","color":"gray","bold":false},{"text":"Nether","color":"dark_red","bold":true}]
