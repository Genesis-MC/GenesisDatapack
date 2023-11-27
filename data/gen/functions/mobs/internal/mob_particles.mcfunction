#Runs four times every second

execute at @e[tag=gen.snow_sprite] run particle cloud ~ ~1 ~ 0.3 0.5 0.3 0 5
execute at @e[tag=gen.tundra_sprite] run particle cloud ~ ~1 ~ 0.3 0.5 0.3 0 5
execute at @e[tag=gen.tundra_sprite] run particle block ice ~ ~1 ~ 0.3 0.5 0.3 0 2
execute at @e[tag=gen.mist_apparition] run particle cloud ~ ~1 ~ 0.3 0.5 0.3 0 5
execute at @e[tag=gen.mist_apparition] run particle rain ~ ~1 ~ 0.3 0.5 0.3 0 5

execute at @e[tag=gen.recluse] run particle block redstone_block ~ ~0.5 ~ 0.3 0.3 0.3 0 1
execute at @e[tag=gen.snowy_recluse] run particle block redstone_block ~ ~0.5 ~ 0.3 0.3 0.3 0 1

execute at @e[tag=gen.nethercreep] run particle flame ~ ~0.5 ~ 0.3 0.3 0.3 0 1

execute at @e[tag=gen.primal_abyss_roamer] run particle witch ~ ~1 ~ 0.3 0.3 0.3 0 1
execute at @e[tag=gen.primal_empyrean_roamer] run particle witch ~ ~1 ~ 0.3 0.3 0.3 0 1

execute at @e[tag=gen.frozen_colossus] run particle snowflake ~ ~2 ~ 0.2 0.25 0.2 0 10

execute at @e[tag=gen.livingwood_matryoshka] run particle spore_blossom_air ~ ~3 ~ 0 0 0 0 1

#Charges
execute at @e[tag=gen.charge.everfrost] run particle enchant ~ ~ ~ 0.1 0.1 0.1 0 5
execute at @e[tag=gen.charge.everfrost] run particle block ice ~ ~ ~ 0.1 0.1 0.1 0 2

schedule function gen:mobs/internal/mob_particles 5t replace