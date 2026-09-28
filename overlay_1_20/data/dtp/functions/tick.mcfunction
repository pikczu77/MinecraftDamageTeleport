# Damage TP: CHAOS - pętla główna

# Zabezpieczenie: znacznik punktu startu nigdy nie może przeżyć ticka.
kill @e[type=minecraft:marker,tag=dtp.origin]

# Nowi gracze mają już niezerową statystykę obrażeń:
# zerujemy ją raz, inaczej teleportowaliby się zaraz po wejściu.
execute as @a[tag=!dtp.ready] run function dtp:init_player

# Śmierć: czyścimy stan, żeby śmiertelne obrażenie nie teleportowało po odrodzeniu.
execute as @a[scores={dtp.deaths=1..}] run function dtp:on_death

# Odliczanie cooldownu
scoreboard players remove @a[scores={dtp=1..}] dtp 1

# Efekty przybycia odpalane z opóźnieniem (score wraca do -1 w show_arrival)
scoreboard players remove @a[scores={dtp.fx=1..}] dtp.fx 1
execute as @a[scores={dtp.fx=0}] at @s run function dtp:show_arrival

# Spadochron dla spadających z nieba (sky_save = 2)
execute as @a[tag=dtp.falling] at @s run function dtp:sky_watch

# Wyzwalacz: każdy gracz, któremu drgnął licznik obrażeń
execute as @a[scores={dtp.damage=1..},tag=dtp.ready] at @s run function dtp:on_damage
