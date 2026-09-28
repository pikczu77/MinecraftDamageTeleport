# La bedrock du plafond du Nether est irreguliere entre Y 123 et 127 : elle laisse des
# poches d'air posees dessus, qui passent tous les tests d'emplacement valide. Comme une
# colonne du Nether n'offre souvent que 3 ou 4 emplacements, ces poches sortaient bien
# trop souvent.
# On limite donc le scan a 110 la plupart du temps ; la zone haute n'est ouverte que
# dans nether_top_chance % des tirages (elle reste donc possible, juste rare).
scoreboard players set #ymin dtp 1
scoreboard players set #ymax dtp 110
execute store result score #roll dtp run random value 1..100
execute if score #roll dtp <= #nether_top dtp run scoreboard players set #ymax dtp 124
