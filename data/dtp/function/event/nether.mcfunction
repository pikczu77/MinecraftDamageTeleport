# Skok do Netheru. "execute in" przelicza X/Z według skali wymiaru, jak portal
# (X/8, Z/8), a potem losujemy miejsce w zasięgu dim_radius i szukamy gruntu.
scoreboard players set #dimhop dtp 1
scoreboard players operation #fxd dtp = #fx_delay_dim dtp
data modify storage dtp:tmp radius set from storage dtp:config dim_radius
execute in minecraft:the_nether run tp @s ~ 64 ~
execute at @s run function dtp:attempt
