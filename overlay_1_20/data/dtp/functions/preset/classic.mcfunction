# Preset "classic": jak oryginał, tylko losowe miejsce
data modify storage dtp:config w_random set value 100
data modify storage dtp:config w_sky set value 0
data modify storage dtp:config w_lava set value 0
data modify storage dtp:config w_dimension set value 0
tellraw @a [{"text":"[Damage TP] ","color":"light_purple","bold":true},{"text":"Preset: ","color":"gray","bold":false},{"text":"classic","color":"yellow","bold":true},{"text":" (jak oryginał, tylko losowe miejsce)","color":"gray","bold":false}]
