tellraw @s ""
tellraw @s {"text":"========= Damage TP =========","color":"light_purple","bold":true}
tellraw @s [{"text":"Status: ","color":"gray"},{"nbt":"enabled","storage":"dtp:config","color":"white"},{"text":"  (1 = włączony)","color":"dark_gray"}]
tellraw @s {"text":"Dokąd teleportuje (szansa = waga / suma):","color":"gray"}
tellraw @s [{"text":"  Losowe miejsce: ","color":"light_purple"},{"nbt":"w_random","storage":"dtp:config","color":"white"},{"text":"   w_random","color":"dark_gray"}]
tellraw @s [{"text":"  Wysoko w niebo: ","color":"aqua"},{"nbt":"w_sky","storage":"dtp:config","color":"white"},{"text":"   w_sky","color":"dark_gray"}]
tellraw @s [{"text":"  Nad lawę: ","color":"gold"},{"nbt":"w_lava","storage":"dtp:config","color":"white"},{"text":"   w_lava","color":"dark_gray"}]
tellraw @s [{"text":"  Inny wymiar: ","color":"red"},{"nbt":"w_dimension","storage":"dtp:config","color":"white"},{"text":"   w_dimension  (End: ","color":"dark_gray"},{"nbt":"end_chance","storage":"dtp:config","color":"white"},{"text":"%)","color":"dark_gray"}]
tellraw @s [{"text":"  Dach Netheru: ","color":"dark_red"},{"nbt":"w_roof","storage":"dtp:config","color":"white"},{"text":"   w_roof","color":"dark_gray"}]
tellraw @s [{"text":"  Środek oceanu: ","color":"blue"},{"nbt":"w_ocean","storage":"dtp:config","color":"white"},{"text":"   w_ocean","color":"dark_gray"}]
tellraw @s [{"text":"Ratunek w niebie (sky_save): ","color":"gray"},{"nbt":"sky_save","storage":"dtp:config","color":"white"},{"text":"  0 = brak, 1 = wiadro wody (MLG), 2 = spadochron","color":"dark_gray"}]
tellraw @s {"text":"Komendy:","color":"yellow"}
tellraw @s [{"text":"  /function dtp:now/","color":"white"},{"text":"<lava|sky|roof|ocean|nether|overworld|end|dimension|teleport|any>","color":"gray"}]
tellraw @s {"text":"      teleport od razu (test / nagrywanie)","color":"dark_gray"}
tellraw @s [{"text":"  /function dtp:next/","color":"white"},{"text":"<to samo>","color":"gray"}]
tellraw @s {"text":"      wymusza zdarzenie przy następnym obrażeniu","color":"dark_gray"}
tellraw @s [{"text":"  /function dtp:on","color":"white"},{"text":"  |  ","color":"dark_gray"},{"text":"/function dtp:off","color":"white"}]
tellraw @s [{"text":"  Zmiana szansy: ","color":"gray"},{"text":"/data modify storage dtp:config w_lava set value 20","color":"white"}]
