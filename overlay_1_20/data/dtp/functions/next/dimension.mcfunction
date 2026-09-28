# Następne obrażenie = inny wymiar.
# /function dtp:next/dimension   albo   /execute as <gracz> run function dtp:next/dimension
scoreboard players set @s dtp.next 10
tellraw @s [{"text":"[Damage TP] ","color":"light_purple","bold":true},{"text":"Następne obrażenie: ","color":"gray","bold":false},{"text":"inny wymiar","color":"red","bold":true}]
