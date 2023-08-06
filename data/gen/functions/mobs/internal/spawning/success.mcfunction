scoreboard players set #w_loop gen.temp 0
execute store success score # gen.temp if data storage gen:mobs success[-1].base_entity
execute if score # gen.temp matches 0 run function gen:mobs/internal/spawning/summon_data
execute if score # gen.temp matches 1 run function gen:mobs/internal/spawning/base_entity/root