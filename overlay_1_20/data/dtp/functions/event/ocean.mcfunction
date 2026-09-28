# ŚRODEK OCEANU: losowe miejsce w tym samym zasięgu co zwykły teleport, ale na wodzie.
# Najpierw max_tries prób tylko z biomem głębokiego oceanu (tam lądu zwykle nie widać),
# potem drugie tyle z dowolnym oceanem. Nic nie znalezione -> zwykły teleport.
data modify storage dtp:tmp radius set from storage dtp:config radius
scoreboard players operation #otries dtp = #max_tries dtp
scoreboard players operation #otries dtp += #max_tries dtp
scoreboard players set #ofound dtp 0
function dtp:ocean_attempt
