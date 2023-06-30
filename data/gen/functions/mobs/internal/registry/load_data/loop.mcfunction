function gen:mobs/internal/registry/load_data/get_total_weight
execute store success score #loop gen.temp run data remove storage gen:mobs read[-1]
execute if score #loop gen.temp matches 1 run function gen:mobs/internal/registry/load_data/loop