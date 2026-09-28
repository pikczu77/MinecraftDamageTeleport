# Po max_tries losowaniach nie ma gdzie stanąć.
execute if score #dimhop dtp matches 1 run function dtp:fail_dim
execute if score #dimhop dtp matches 0 run function dtp:fail_home
