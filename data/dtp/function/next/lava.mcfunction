# Następne obrażenie = nad lawę.
# /function dtp:next/lava   albo   /execute as <gracz> run function dtp:next/lava
scoreboard players set @s dtp.next 3
tellraw @s [{"text":"[Damage TP] ","color":"light_purple","bold":true},{"text":"Następne obrażenie: ","color":"gray","bold":false},{"text":"nad lawę","color":"gold","bold":true}]
