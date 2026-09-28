# Czas do uderzenia w ziemię, w tickach:
#   (wysokość + 49 * brakująca prędkość) / 3.92
# Po rozpędzeniu gracz leci 3.92 kratki/tick; rozpędzanie się kosztuje
# 49 * brakująca prędkość kratek drogi (suma szeregu z oporem 0.98).
# Liczone od nowa co tick z prawdziwej wysokości, więc samo się poprawia.
scoreboard players operation #k dtp = @s dtp.acc
scoreboard players operation #k dtp *= #49 dtp
scoreboard players operation #k dtp /= #100 dtp
scoreboard players operation #t dtp = #d dtp
scoreboard players operation #t dtp += #k dtp
scoreboard players operation #t dtp /= #392 dtp
execute if score #t dtp matches ..-1 run scoreboard players set #t dtp 0

# Wzór zakłada, że zostało jeszcze sporo lotu. Na ostatnie 5 sekund liczymy dokładnie,
# tick po ticku (przy wysokości 1000 wynik jest ten sam, przy niskich skokach wzór się spóźnia).
execute if score #t dtp matches ..100 run function dtp:sky_sim_start

# Sekundy i dziesiąte części sekundy
scoreboard players operation #s dtp = #t dtp
scoreboard players operation #s dtp /= #20 dtp
scoreboard players operation #ds dtp = #t dtp
scoreboard players operation #ds dtp %= #20 dtp
scoreboard players operation #ds dtp /= #2 dtp

# Wysokość w kratkach
scoreboard players operation #m dtp = #d dtp
scoreboard players operation #m dtp /= #100 dtp
execute if score #m dtp matches ..-1 run scoreboard players set #m dtp 0

# Pik co sekundę przez ostatnie 5 sekund
execute if score #s dtp < @s dtp.sec if score @s dtp.sec matches ..5 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.5 1
scoreboard players operation @s dtp.sec = #s dtp

execute if score #s dtp matches 3.. run title @s actionbar [{"text":"↓ Ziemia za ","color":"yellow"},{"score":{"name":"#s","objective":"dtp"},"bold":true},{"text":",","bold":true},{"score":{"name":"#ds","objective":"dtp"},"bold":true},{"text":" s","bold":true},{"text":"   ","color":"gray"},{"score":{"name":"#m","objective":"dtp"},"color":"gray"},{"text":" kratek","color":"gray"}]
execute if score #s dtp matches ..2 run title @s actionbar [{"text":"⚠ ZIEMIA ZA ","color":"red","bold":true},{"score":{"name":"#s","objective":"dtp"}},{"text":","},{"score":{"name":"#ds","objective":"dtp"}},{"text":" s! ⚠"}]
