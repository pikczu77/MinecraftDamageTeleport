# Lądowanie. Wykonywane "as" gracz, "at" wybrane miejsce.
scoreboard players set #done dtp 1

execute if score #mode dtp matches 0 run tp @s ~ ~ ~
execute if score #mode dtp matches 1 run function dtp:lava_pit

# Dźwięk, napisy i cząsteczki są opóźnione (patrz dtp:show_arrival): wysłane teraz,
# giną, zanim klient doczyta teren w nowym miejscu.
function dtp:arrived
