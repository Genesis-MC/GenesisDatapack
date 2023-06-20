
#RUNS EVERY SECOND
execute as @e[tag=Crystalarium] run function gen:professions/mineralogy/internal/crystalarium/growth
execute if predicate gen:randomizer/random25 at @e[tag=Crystalarium] if entity @a[distance=..6] run particle end_rod ~ ~1.2 ~ 0.2 0 0.2 0 1

schedule function gen:professions/mineralogy/internal/sectick 1s