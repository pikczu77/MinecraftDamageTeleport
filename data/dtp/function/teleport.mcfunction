# Lance une teleportation. Execute "as"/"at" le joueur.

# Relecture de la config a chaud
execute store result score #cooldown dtp run data get storage dtp:config cooldown
execute store result score #max_tries dtp run data get storage dtp:config max_tries
execute store result score #nether_top dtp run data get storage dtp:config nether_top_chance
execute store result score #fx_delay dtp run data get storage dtp:config fx_delay

scoreboard players operation @s dtp = #cooldown dtp
scoreboard players set #tries dtp 0

# Repere du point de depart, pour pouvoir annuler si aucune destination n'est trouvee
execute summon minecraft:marker run tag @s add dtp.origin

# Effets au point de depart
particle minecraft:portal ~ ~1 ~ 0.4 0.9 0.4 0.05 60 force
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1

function dtp:attempt

kill @e[type=minecraft:marker,tag=dtp.origin]
