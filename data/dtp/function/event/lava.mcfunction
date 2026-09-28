# LAWA: losowe miejsce w tym samym wymiarze, ale skan szuka suchego gruntu
# z miejscem nad głową (tryb 1). Przy lądowaniu dtp:lava_pit robi pod graczem
# dół pełen lawy i wypuszcza go 3 kratki nad nim.
data modify storage dtp:tmp radius set from storage dtp:config radius
scoreboard players set #mode dtp 1
# Napis "LAWA!" ma się pojawić jeszcze w trakcie spadania
scoreboard players set #fxd dtp 4
function dtp:attempt
