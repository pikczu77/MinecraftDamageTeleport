# Następne obrażenie = End.
# /function dtp:next/end   albo   /execute as <gracz> run function dtp:next/end
scoreboard players set @s dtp.next 6
tellraw @s [{"text":"[Damage TP] ","color":"light_purple","bold":true},{"text":"Następne obrażenie: ","color":"gray","bold":false},{"text":"End","color":"dark_purple","bold":true}]
