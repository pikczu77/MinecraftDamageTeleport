execute if score #tries dtp >= #otries dtp run function dtp:ocean_fail
# dtp:ocean_fail robi zwykły teleport, który zeruje #tries - bez flagi #ofound
# ta linia odpaliłaby po nim szukanie oceanu od nowa.
execute if score #ofound dtp matches 0 if score #tries dtp < #otries dtp run function dtp:ocean_attempt

# Zerujemy licznik dla wywołującego, jak w dtp:retry.
scoreboard players set #count dtp 0
