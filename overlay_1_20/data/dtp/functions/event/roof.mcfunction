# DACH NETHERU: na bedrockowy sufit Netheru, skąd nie da się zejść normalnie.
# Z Overworldu współrzędne /8 jak przez portal, potem losowanie w zasięgu dim_radius.
scoreboard players operation #fxd dtp = #fx_delay_dim dtp
execute in minecraft:the_nether run tp @s ~ 200 ~
# spreadplayers w Netherze szuka powierzchni od góry świata (Y 256), więc zawsze
# trafia na wierzch bedrocku sufitu (Y 128).
execute at @s run function dtp:spread_roof with storage dtp:config

scoreboard players operation @s dtp.roof = #roof_time dtp
tag @s add dtp.onroof
function dtp:arrived
