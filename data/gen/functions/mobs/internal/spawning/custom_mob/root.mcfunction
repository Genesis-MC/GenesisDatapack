# add more mobs to check if you want
#reseting for spawning
tag @s remove try_spawn
execute at @s[type=minecraft:zombie] run function gen:mobs/internal/spawning/custom_mob/zombie
execute at @s[type=minecraft:skeleton] run function gen:mobs/internal/spawning/custom_mob/skeleton
execute at @s[type=minecraft:creeper] run function gen:mobs/internal/spawning/custom_mob/creeper
execute at @s[type=minecraft:spider] run function gen:mobs/internal/spawning/custom_mob/spider
execute at @s[type=minecraft:wandering_trader] run function gen:mobs/internal/spawning/custom_mob/wandering_trader