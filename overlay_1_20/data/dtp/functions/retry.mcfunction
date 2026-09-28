execute if score #tries dtp >= #max_tries dtp run function dtp:fail
execute if score #tries dtp < #max_tries dtp run function dtp:attempt

# Zerujemy licznik dla wywołującego: nie może odpalić dtp:pick z wartością
# zostawioną przez zagnieżdżoną próbę.
scoreboard players set #count dtp 0
