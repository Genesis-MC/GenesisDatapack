#Runs four times every second

execute as @e[tag=gen.snow_sprite] at @s run particle cloud ~ ~1 ~ 0.3 0.5 0.3 0 5
execute as @e[tag=gen.tundra_sprite] at @s run particle cloud ~ ~1 ~ 0.3 0.5 0.3 0 5
execute as @e[tag=gen.tundra_sprite] at @s run particle block ice ~ ~1 ~ 0.3 0.5 0.3 0 2
execute as @e[tag=gen.mist_apparition] at @s run particle cloud ~ ~1 ~ 0.3 0.5 0.3 0 5
execute as @e[tag=gen.mist_apparition] at @s run particle rain ~ ~1 ~ 0.3 0.5 0.3 0 5

execute as @e[tag=gen.recluse] at @s run particle block redstone_block ~ ~0.5 ~ 0.3 0.3 0.3 0 1
execute as @e[tag=gen.snowy_recluse] at @s run particle block redstone_block ~ ~0.5 ~ 0.3 0.3 0.3 0 1

execute as @e[tag=gen.mirage_prism] at @s run particle totem_of_undying ~ ~0.5 ~ 0.3 0.6 0.3 0 6

schedule function gen:mobs/internal/mob_particles 5t replace