tag @s remove dtp.falling
effect give @s minecraft:slow_falling 10 0 true
title @s actionbar {"text":"☂ Spadochron otwarty! ☂","color":"green","bold":true}
playsound minecraft:item.armor.equip_elytra master @s ~ ~ ~ 1 1 1
playsound minecraft:entity.phantom.flap master @s ~ ~ ~ 1 0.8 1
particle minecraft:cloud ~ ~2 ~ 0.6 0.3 0.6 0.02 30 force
