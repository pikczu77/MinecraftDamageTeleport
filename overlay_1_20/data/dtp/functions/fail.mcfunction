# Po max_tries losowaniach nie ma gdzie stanąć.
# Deep Dark: tylko zapamiętujemy porażkę. Zapasowy zwykły teleport robi dtp:event/deep_dark
# dopiero po powrocie z pętli prób - odpalony tutaj, w środku pętli, namieszałby w #tries.
execute if score #mode dtp matches 2 run scoreboard players set #dfail dtp 1
execute unless score #mode dtp matches 2 if score #dimhop dtp matches 1 run function dtp:fail_dim
execute unless score #mode dtp matches 2 if score #dimhop dtp matches 0 run function dtp:fail_home
