# Damage TP - initialisation
# Objectif "dtp" : sert a la fois de cooldown par joueur et de variables globales (#nom)
scoreboard objectives add dtp dummy
# Objectif "dtp.damage" : lie a la statistique "degats subis" du joueur
scoreboard objectives add dtp.damage minecraft.custom:minecraft.damage_taken
# Objectif "dtp.fx" : compte a rebours avant le retour d'arrivee (-1 = inactif)
scoreboard objectives add dtp.fx dummy

# --- Configuration (sauvegardee dans le monde, ne s'ecrase pas au /reload) ---
# radius    : rayon horizontal du tirage, en blocs, autour du joueur
# cooldown  : ticks d'immunite apres une teleportation (20 ticks = 1 seconde)
# max_tries : nombre de colonnes tirees au sort avant d'abandonner
# enabled   : 1 = actif, 0 = desactive
# nether_top_chance : % de chances d'autoriser la zone haute du Nether (le plafond)
# fx_delay  : ticks d'attente avant le son / l'action bar d'arrivee
execute unless data storage dtp:config radius run data modify storage dtp:config radius set value 2500
execute unless data storage dtp:config cooldown run data modify storage dtp:config cooldown set value 40
execute unless data storage dtp:config max_tries run data modify storage dtp:config max_tries set value 8
execute unless data storage dtp:config enabled run data modify storage dtp:config enabled set value 1
execute unless data storage dtp:config nether_top_chance run data modify storage dtp:config nether_top_chance set value 15
execute unless data storage dtp:config fx_delay run data modify storage dtp:config fx_delay set value 13

tellraw @a [{"text":"[Damage TP] ","color":"light_purple","bold":true},{"text":"loaded. Every hit teleports you somewhere random. ","color":"gray","bold":false},{"text":"(by ToMiiX)","color":"gray","bold":false,"italic":true}]
