
#RUNS EVERY 5 TICKS
execute as @e[tag=Crystalarium] at @s unless block ~ ~ ~ amethyst_block run function gen:professions/mineralogy/internal/crystalarium/destroycrystalarium
schedule function gen:professions/mineralogy/internal/slowtick 5t