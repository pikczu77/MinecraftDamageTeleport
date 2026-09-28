# Atterrissage. Execute "as" le joueur, "at" l'emplacement retenu.
scoreboard players set #done dtp 1

tp @s ~ ~ ~

# Le son, l'action bar et les particules d'arrivee sont differes de quelques ticks
# (voir dtp:show_arrival) : envoyes maintenant, ils se perdent pendant que le client
# charge le terrain de destination.
scoreboard players operation @s dtp.fx = #fx_delay dtp
