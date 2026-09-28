# Bornes verticales du scan selon la dimension.
# Le sol solide obligatoire sous les pieds interdit deja le vide et le dessous de la bedrock ;
# ces bornes servent surtout a rester sous le plafond de bedrock du Nether.
#
# On passe par des predicats "location_check" plutot que par "execute if dimension" :
# les predicats existent depuis toujours, "if dimension" est bien plus recent.
scoreboard players set #ymin dtp -63
scoreboard players set #ymax dtp 318
execute if predicate dtp:in_nether run function dtp:bounds_nether
execute if predicate dtp:in_end run function dtp:bounds_end
execute store result storage dtp:tmp y int 1 run scoreboard players get #ymax dtp
