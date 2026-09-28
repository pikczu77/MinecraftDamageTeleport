# Retour d'arrivee, joue quelques ticks APRES l'atterrissage.
# Envoye dans le meme tick que la teleportation, il se perdait regulierement :
# le client encaisse un saut de 2500 blocs et la generation du chunk, et l'action bar
# (qui s'efface d'elle-meme au bout de ~3 s) expirait derriere l'ecran de chargement.
# Execute "as"/"at" le joueur.
scoreboard players set @s dtp.fx -1

execute store result score #lx dtp run data get entity @s Pos[0]
execute store result score #ly dtp run data get entity @s Pos[1]
execute store result score #lz dtp run data get entity @s Pos[2]

title @s actionbar [{"text":"Teleport ","color":"light_purple"},{"text":"-> ","color":"gray"},{"score":{"name":"#lx","objective":"dtp"},"color":"white"},{"text":" ","color":"gray"},{"score":{"name":"#ly","objective":"dtp"},"color":"white"},{"text":" ","color":"gray"},{"score":{"name":"#lz","objective":"dtp"},"color":"white"}]

# minVolume a 1 : le son est garanti audible pour le joueur meme si son client le
# recoit alors qu'il se croit encore a l'ancienne position.
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1 1
particle minecraft:reverse_portal ~ ~1 ~ 0.4 0.9 0.4 0.1 80 force
