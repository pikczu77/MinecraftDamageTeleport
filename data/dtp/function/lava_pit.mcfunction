# Lądowanie w trybie lawy. Wykonywane "as" gracz, "at" wybrane miejsce.
# Dół 3x3 na 2 kratki w głąb, zalany lawą (tylko naturalny grunt, patrz tag lava_pit).
# Każda kolumna osobno: fill zahaczający o niewczytany chunk odrzuciłby całość,
# a nasza kolumna jest zawsze wczytana, więc środek dołu powstaje zawsze.
fill ~-1 ~-2 ~-1 ~-1 ~-1 ~-1 minecraft:lava replace #dtp:lava_pit
fill ~ ~-2 ~-1 ~ ~-1 ~-1 minecraft:lava replace #dtp:lava_pit
fill ~1 ~-2 ~-1 ~1 ~-1 ~-1 minecraft:lava replace #dtp:lava_pit
fill ~-1 ~-2 ~ ~-1 ~-1 ~ minecraft:lava replace #dtp:lava_pit
fill ~ ~-2 ~ ~ ~-1 ~ minecraft:lava replace #dtp:lava_pit
fill ~1 ~-2 ~ ~1 ~-1 ~ minecraft:lava replace #dtp:lava_pit
fill ~-1 ~-2 ~1 ~-1 ~-1 ~1 minecraft:lava replace #dtp:lava_pit
fill ~ ~-2 ~1 ~ ~-1 ~1 minecraft:lava replace #dtp:lava_pit
fill ~1 ~-2 ~1 ~1 ~-1 ~1 minecraft:lava replace #dtp:lava_pit

# 3 kratki nad lawą: gracz widzi, w co wpada (a 3 kratki nie dają obrażeń od upadku)
tp @s ~ ~3 ~

# Krótszy cooldown: po chwili w lawie następne obrażenie wyrzuci go gdzie indziej
scoreboard players operation @s dtp = #lava_time dtp
