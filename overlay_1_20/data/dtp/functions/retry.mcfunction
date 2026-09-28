# Variante 1.20.x, sans "return run".
execute if score #tries dtp >= #max_tries dtp run function dtp:fail
execute if score #tries dtp < #max_tries dtp run function dtp:attempt

# Neutralise le compteur pour l'appelant : il ne doit pas relancer dtp:pick avec la
# valeur laissee par la tentative imbriquee.
scoreboard players set #count dtp 0
