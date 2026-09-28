title @s times 5 60 15
execute if data storage dtp:config {sky_save:0} run title @s subtitle {"text":"Powodzenia...","color":"gray","italic":true}
execute if data storage dtp:config {sky_save:1} run title @s subtitle {"text":"MLG albo śmierć! Wiadro wody masz w ekwipunku","color":"aqua"}
execute if data storage dtp:config {sky_save:2} run title @s subtitle {"text":"Spokojnie, spadochron się otworzy... chyba","color":"green","italic":true}
title @s title [{"text":"☁ ","color":"white"},{"score":{"name":"#sky","objective":"dtp"},"color":"aqua","bold":true},{"text":" KRATEK NAD ZIEMIĄ! ","color":"aqua","bold":true},{"text":"☁","color":"white"}]
playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 1 0.7 1
playsound minecraft:item.elytra.flying master @s ~ ~ ~ 0.6 1 0.6
particle minecraft:cloud ~ ~ ~ 1 1 1 0.05 60 force
