# Idzie w górę kolumny i zapamiętuje najwyższy blok, który nie jest powietrzem.
execute unless block ~ ~ ~ #dtp:air run scoreboard players operation #top dtp = #y dtp
scoreboard players add #y dtp 1
execute if score #y dtp <= #ymax dtp positioned ~ ~1 ~ run function dtp:sky_scan_top
