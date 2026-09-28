# Jedna próba = jedna losowa kolumna, skanowana z góry na dół.
# Wykonywane "as"/"at" gracza; pozycja kontekstu to cały czas punkt startu losowania.
#
# Bez "return run" (nie ma go w 1.20.2): obie gałęzie wykluczają się przez #count
# (dtp:retry zeruje go na wyjściu, inaczej udana głęboka próba odpalałaby dtp:pick
# na każdym poziomie powrotu).

scoreboard players add #tries dtp 1
scoreboard players set #count dtp 0

# spreadplayers robi dwie rzeczy naraz: losuje X/Z w promieniu I wymusza
# wygenerowanie chunka. Sam test bloku 2500 kratek dalej nie gwarantuje, że teren istnieje.
function dtp:spread with storage dtp:tmp

# Gracz się przesunął: pozycja kontekstu jest nieaktualna, kotwiczymy się na nim.
execute at @s run function dtp:scan_column

# Kolumna bezużyteczna (pełna, pusta, sama lawa) -> losujemy jeszcze raz
execute if score #count dtp matches 0 run function dtp:retry

# Przejście 2: wybieramy jedno z dobrych miejsc i lądujemy
execute if score #count dtp matches 1.. at @s run function dtp:pick
