# Damage TP: CHAOS - inicjalizacja
# Obiekt "dtp": cooldown gracza + zmienne globalne (#nazwa)
scoreboard objectives add dtp dummy
# Obiekt "dtp.damage": statystyka "otrzymane obrażenia"
scoreboard objectives add dtp.damage minecraft.custom:minecraft.damage_taken
# Obiekt "dtp.deaths": licznik śmierci (czyści stan gracza po śmierci)
scoreboard objectives add dtp.deaths deathCount
# dtp.fx    : odliczanie do efektów przybycia (-1 = nieaktywne)
# dtp.ev    : jakie zdarzenie trafiło gracza ostatnio
# dtp.next  : wymuszone następne zdarzenie (0 = losowe)
# dtp.sky   : wysokość, na której otwiera się spadochron
# dtp.skyt  : limit czasu spadania (zabezpieczenie)
# dtp.count : licznik teleportacji
scoreboard objectives add dtp.fx dummy
scoreboard objectives add dtp.ev dummy
scoreboard objectives add dtp.next dummy
scoreboard objectives add dtp.sky dummy
scoreboard objectives add dtp.skyt dummy
scoreboard objectives add dtp.count dummy
scoreboard objectives modify dtp.count displayname {"text":"Teleporty","color":"light_purple","bold":true}

# --- Konfiguracja (zapisana w świecie, /reload jej nie nadpisuje) ---
# Zmiana: /data modify storage dtp:config <klucz> set value <liczba>
#
# enabled           : 1 = włączony, 0 = wyłączony
# radius            : zasięg losowania miejsca (w kratkach) wokół gracza
# cooldown          : ile ticków po teleportacji obrażenia nie teleportują (20 ticków = 1 s)
# max_tries         : ile kolumn losujemy, zanim się poddamy
# nether_top_chance : % szans na wpuszczenie pod sam sufit Netheru
# fx_delay          : ile ticków czekać z dźwiękiem/napisem po zwykłym teleporcie
# fx_delay_dim      : to samo po zmianie wymiaru (ekran ładowania trwa dłużej)
#
# Wagi zdarzeń (szansa = waga / suma wag, 0 = wyłączone):
# w_random          : losowe miejsce w tym samym wymiarze (jak w oryginale)
# w_sky             : 1000 kratek w górę
# w_lava            : prosto do lawy
# w_dimension       : inny wymiar (Overworld / Nether / End)
#
# sky_height        : o ile kratek w górę wyrzuca zdarzenie "niebo"
# sky_save          : 0 = radź sobie sam, 1 = MLG (dostajesz wiadro wody), 2 = spadochron tuż nad ziemią
# lava_time         : ile ticków po wpadnięciu do lawy następne obrażenie cię z niej wyrzuci
# end_chance        : % szans, że skok między wymiarami trafi do Endu
# dim_radius        : zasięg losowania miejsca po zmianie wymiaru
execute unless data storage dtp:config enabled run data modify storage dtp:config enabled set value 1
execute unless data storage dtp:config radius run data modify storage dtp:config radius set value 2500
execute unless data storage dtp:config cooldown run data modify storage dtp:config cooldown set value 40
execute unless data storage dtp:config max_tries run data modify storage dtp:config max_tries set value 8
execute unless data storage dtp:config nether_top_chance run data modify storage dtp:config nether_top_chance set value 15
execute unless data storage dtp:config fx_delay run data modify storage dtp:config fx_delay set value 13
execute unless data storage dtp:config fx_delay_dim run data modify storage dtp:config fx_delay_dim set value 30
execute unless data storage dtp:config w_random run data modify storage dtp:config w_random set value 45
execute unless data storage dtp:config w_sky run data modify storage dtp:config w_sky set value 15
execute unless data storage dtp:config w_lava run data modify storage dtp:config w_lava set value 15
execute unless data storage dtp:config w_dimension run data modify storage dtp:config w_dimension set value 25
execute unless data storage dtp:config sky_height run data modify storage dtp:config sky_height set value 1000
execute unless data storage dtp:config sky_save run data modify storage dtp:config sky_save set value 1
execute unless data storage dtp:config lava_time run data modify storage dtp:config lava_time set value 20
execute unless data storage dtp:config end_chance run data modify storage dtp:config end_chance set value 25
execute unless data storage dtp:config dim_radius run data modify storage dtp:config dim_radius set value 300

tellraw @a [{"text":"[Damage TP: CHAOS] ","color":"light_purple","bold":true},{"text":"załadowany! Każde obrażenie = losowa teleportacja: gdziekolwiek, 1000 kratek w górę, do lawy albo do innego wymiaru. ","color":"gray","bold":false},{"text":"Komendy: /function dtp:help ","color":"yellow","bold":false},{"text":"(oryginał: ToMiiX)","color":"dark_gray","bold":false,"italic":true}]
