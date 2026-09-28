# Gracz przeżył spadanie z nieba (wiadro wody, jezioro, szczęście...).
tag @s remove dtp.falling
title @s actionbar ""
title @s times 5 50 15
title @s subtitle {"text":"Przeżyłeś spadanie z nieba!","color":"gray"}
title @s title {"text":"MLG!","color":"gold","bold":true}
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1 1
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 1 0.5 0.4 80 force
