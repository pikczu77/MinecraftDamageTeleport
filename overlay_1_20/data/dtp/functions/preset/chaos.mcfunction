# Preset "chaos": prawie zawsze coś szalonego
data modify storage dtp:config w_random set value 10
data modify storage dtp:config w_sky set value 30
data modify storage dtp:config w_lava set value 25
data modify storage dtp:config w_dimension set value 35
tellraw @a [{"text":"[Damage TP] ","color":"light_purple","bold":true},{"text":"Preset: ","color":"gray","bold":false},{"text":"chaos","color":"yellow","bold":true},{"text":" (prawie zawsze coś szalonego)","color":"gray","bold":false}]
