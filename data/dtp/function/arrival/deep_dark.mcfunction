title @s times 10 70 20
title @s subtitle {"text":"Cicho... bardzo cicho...","color":"gray","italic":true}
title @s title {"text":"DEEP DARK","color":"dark_aqua","bold":true}
effect give @s minecraft:darkness 10 0 true
# Same dźwięki (playsound nie budzi Wardena) - prawdziwy Warden przyjdzie dopiero,
# jak gracz sam uruchomi shriekery.
playsound minecraft:entity.warden.heartbeat master @s ~ ~ ~ 1 1 1
playsound minecraft:block.sculk_shrieker.shriek master @s ~ ~ ~ 0.6 1 0.6
particle minecraft:sculk_soul ~ ~1 ~ 1 1 1 0.02 30 force
