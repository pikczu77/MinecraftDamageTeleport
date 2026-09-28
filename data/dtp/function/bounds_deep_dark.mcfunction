# Deep Dark jest tylko pod ziemią: skanujemy od Y 0 w dół.
scoreboard players set #ymin dtp -62
scoreboard players set #ymax dtp 0
execute store result storage dtp:tmp y int 1 run scoreboard players get #ymax dtp
