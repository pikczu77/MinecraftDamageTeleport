scoreboard players set #bud dtp 1
execute if entity @e[tag=dtp.buddy] run tp @e[tag=dtp.buddy,limit=1] ~ ~ ~
execute unless entity @e[tag=dtp.buddy] run summon minecraft:creeper ~ ~ ~ {Tags:["dtp.buddy"]}
# Patrzy prosto na gracza
execute as @e[tag=dtp.buddy,limit=1] at @s run tp @s ~ ~ ~ facing entity @p
particle minecraft:portal ~ ~1 ~ 0.3 0.8 0.3 0.05 40 force
