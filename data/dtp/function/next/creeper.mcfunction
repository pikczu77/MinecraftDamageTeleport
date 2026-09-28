# Następne obrażenie = creeper-towarzysz.
# /function dtp:next/creeper   albo   /execute as <gracz> run function dtp:next/creeper
scoreboard players set @s dtp.next 11
tellraw @s [{"text":"[Damage TP] ","color":"light_purple","bold":true},{"text":"Następne obrażenie: ","color":"gray","bold":false},{"text":"creeper-towarzysz","color":"green","bold":true}]
