# Damage TP - inicjalizacja
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
scoreboard objectives add dtp.fx dummy
scoreboard objectives add dtp.ev dummy
scoreboard objectives add dtp.next dummy
scoreboard objectives add dtp.sky dummy
scoreboard objectives add dtp.skyt dummy

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
# w_sky             : losowe miejsce, ale 1000 kratek nad ziemią
# w_lava            : losowe miejsce prosto nad lawą
# w_dimension       : inny wymiar (Overworld / Nether / End)
#
# sky_height        : ile kratek nad ziemią ląduje teleport "niebo"
# sky_save          : 0 = radź sobie sam, 1 = dostajesz wiadro wody na MLG, 2 = spadochron tuż nad ziemią
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
execute unless data storage dtp:config sky_height run data modify storage dtp:config sky_height set value 1000
execute unless data storage dtp:config lava_time run data modify storage dtp:config lava_time set value 20
execute unless data storage dtp:config end_chance run data modify storage dtp:config end_chance set value 25
execute unless data storage dtp:config dim_radius run data modify storage dtp:config dim_radius set value 300
# Szanse zdarzeń i sky_save: ustawiane raz na wersję konfiguracji (patrz dtp:config_v2)
execute unless data storage dtp:config {version:2} run function dtp:config_v2

tellraw @a [{"text":"[Damage TP] ","color":"light_purple","bold":true},{"text":"załadowany. Każde obrażenie teleportuje cię w losowe miejsce... zwykle. ","color":"gray","bold":false},{"text":"(by ToMiiX)","color":"gray","bold":false,"italic":true}]
