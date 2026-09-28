# Bedrock sufitu Netheru jest nierówny między Y 123 a 127 i zostawia na sobie kieszenie
# powietrza, które przechodzą wszystkie testy dobrego miejsca. Kolumna w Netherze ma
# często tylko 3-4 dobre miejsca, więc te kieszenie wypadały zdecydowanie za często.
# Dlatego zwykle skanujemy tylko do 110; strefa pod samym sufitem jest otwarta
# w nether_top_chance % losowań (możliwa, ale rzadka).
scoreboard players set #ymin dtp 1
scoreboard players set #ymax dtp 110
execute store result score #roll dtp run random value 1..100
execute if score #roll dtp <= #nether_top dtp run scoreboard players set #ymax dtp 124
