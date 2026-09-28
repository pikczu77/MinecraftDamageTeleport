# Co tick dla uwięzionych na dachu Netheru (tag dtp.onroof).
# Zejście "normalne" to każde obrażenie (skok z 4 kratek, perła...) - wtedy teleport zdejmuje tag.
# Jeśli gracz się nie zrani, po roof_time mod sam go stąd zabierze.
execute unless predicate dtp:in_nether run tag @s remove dtp.onroof
execute store result score #py dtp run data get entity @s Pos[1]
execute if score #py dtp matches ..126 run tag @s remove dtp.onroof

scoreboard players remove @s dtp.roof 1
scoreboard players operation #s dtp = @s dtp.roof
scoreboard players operation #s dtp /= #20 dtp
execute if entity @s[tag=dtp.onroof] run title @s actionbar [{"text":"Utknąłeś na dachu Netheru! ","color":"red","bold":true},{"text":"Zrań się, żeby zejść... albo czekaj ","color":"gray","bold":false},{"score":{"name":"#s","objective":"dtp"},"color":"white","bold":false},{"text":" s","color":"gray","bold":false}]
execute if entity @s[tag=dtp.onroof] if score @s dtp.roof matches ..0 run function dtp:roof_timeout
