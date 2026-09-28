# Damage TP - boucle principale

# Filet de securite : un repere de depart ne doit jamais survivre a un tick.
kill @e[type=minecraft:marker,tag=dtp.origin]

# Les joueurs jamais vus ont deja une statistique "degats subis" non nulle :
# on la remet a zero une fois pour toutes, sinon ils se teleportent des la connexion.
execute as @a[tag=!dtp.ready] run function dtp:init_player

# Decompte du cooldown
scoreboard players remove @a[scores={dtp=1..}] dtp 1

# Retour d'arrivee differe : quand le compteur atteint 0, on joue le son et l'action bar
# (le score est remis a -1 par show_arrival pour ne declencher qu'une fois)
scoreboard players remove @a[scores={dtp.fx=1..}] dtp.fx 1
execute as @a[scores={dtp.fx=0}] at @s run function dtp:show_arrival

# Declenchement : tout joueur dont le compteur de degats a bouge
execute as @a[scores={dtp.damage=1..},tag=dtp.ready] at @s run function dtp:on_damage
