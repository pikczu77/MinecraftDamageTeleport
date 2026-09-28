scoreboard players add #t dtp 1
scoreboard players operation #sd dtp -= #sv dtp
scoreboard players add #sv dtp 800
scoreboard players operation #sv dtp *= #49 dtp
scoreboard players operation #sv dtp /= #50 dtp
execute if score #sd dtp matches 1.. if score #t dtp matches ..200 run function dtp:sky_sim
