# DEEP DARK: losowe miejsce w zasięgu radius, ale w jaskini w biomie Deep Dark.
# Deep Dark leży głęboko pod górami, więc trafia się rzadziej niż zwykłe miejsce:
# sprawdzamy do deep_dark_tries kolumn (skan tylko Y -62..0, więc tani).
data modify storage dtp:tmp radius set from storage dtp:config radius
scoreboard players set #mode dtp 2
execute store result score #max_tries dtp run data get storage dtp:config deep_dark_tries
function dtp:attempt
execute store result score #max_tries dtp run data get storage dtp:config max_tries

# Nie znaleziono: zwykły teleport, uruchomiony dopiero tutaj, po wyjściu z pętli prób
execute if score #dfail dtp matches 1 run function dtp:deep_dark_fallback
