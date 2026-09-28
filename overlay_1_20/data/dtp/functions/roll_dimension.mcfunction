# Wybiera wymiar docelowy, zawsze inny niż obecny. Wynik w #ev:
#   4 = Nether, 5 = Overworld, 6 = End
execute store result score #r dtp run random value 1..100

# Overworld (i wymiary z modów) -> Nether albo End
scoreboard players set #ev dtp 4
execute if score #r dtp <= #end_chance dtp run scoreboard players set #ev dtp 6

# Nether -> Overworld albo End
execute if predicate dtp:in_nether run scoreboard players set #ev dtp 5
execute if predicate dtp:in_nether if score #r dtp <= #end_chance dtp run scoreboard players set #ev dtp 6

# End -> Overworld albo Nether, pół na pół
execute if predicate dtp:in_end run scoreboard players set #ev dtp 5
execute if predicate dtp:in_end if score #r dtp matches ..50 run scoreboard players set #ev dtp 4
