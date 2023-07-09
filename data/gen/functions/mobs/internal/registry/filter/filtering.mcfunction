
execute if score .player_count gen.world matches 1 as @a at @s run function gen:mobs/internal/registry/filter/dimension
execute if data storage gen:mobs read[].requirements.moon_phase run function gen:mobs/internal/registry/filter/moon_phase/start
execute if data storage gen:mobs read[].requirements.block run function gen:mobs/internal/registry/filter/block/start