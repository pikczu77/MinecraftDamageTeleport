# Domyślne szanse zdarzeń. Odpala się raz na świat (albo raz po aktualizacji z wcześniejszej
# wersji, która dawała dużo więcej szalonych teleportów), potem zmiany gracza zostają.
# Większość teleportów jest zwykła, jak w oryginale; co któryś jest śmieszny.
data modify storage dtp:config w_random set value 70
data modify storage dtp:config w_sky set value 10
data modify storage dtp:config w_lava set value 10
data modify storage dtp:config w_dimension set value 10
data modify storage dtp:config sky_save set value 0
data modify storage dtp:config version set value 2
