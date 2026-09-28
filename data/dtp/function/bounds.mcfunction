# Pionowe granice skanu zależnie od wymiaru.
# Wymóg stałego gruntu pod stopami i tak wyklucza pustkę i miejsca pod bedrockiem;
# granice są głównie po to, żeby nie wchodzić nad sufit Netheru.
#
# Predykaty "location_check" zamiast "execute if dimension": predykaty są od zawsze,
# "if dimension" jest dużo nowsze.
scoreboard players set #ymin dtp -63
scoreboard players set #ymax dtp 318
execute if predicate dtp:in_nether run function dtp:bounds_nether
execute if predicate dtp:in_end run function dtp:bounds_end
execute store result storage dtp:tmp y int 1 run scoreboard players get #ymax dtp
