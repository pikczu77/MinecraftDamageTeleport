# TOWARZYSZ: zwykły losowy teleport, ale creeper teleportuje się razem z tobą.
# Jeśli jakiś creeper jest w pobliżu (16 kratek), zabieramy właśnie jego;
# jeśli nie, pojawia się nowy. Ląduje 2 kratki za plecami (patrz dtp:creeper_place).
tag @e[type=minecraft:creeper,distance=..16,limit=1,sort=nearest] add dtp.buddy
scoreboard players set #buddy dtp 1
data modify storage dtp:tmp radius set from storage dtp:config radius
function dtp:attempt
tag @e[tag=dtp.buddy] remove dtp.buddy
