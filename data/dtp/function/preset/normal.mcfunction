# Preset "normal": domyślne szanse
data modify storage dtp:config w_random set value 45
data modify storage dtp:config w_sky set value 15
data modify storage dtp:config w_lava set value 15
data modify storage dtp:config w_dimension set value 25
tellraw @a [{"text":"[Damage TP] ","color":"light_purple","bold":true},{"text":"Preset: ","color":"gray","bold":false},{"text":"normal","color":"yellow","bold":true},{"text":" (domyślne szanse)","color":"gray","bold":false}]
