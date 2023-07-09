execute store result score #current_weight gen.temp run data get storage gen:mobs read[-1].weight
scoreboard players operation #total_weight gen.temp += #current_weight gen.temp
execute store success score #loop gen.temp run data remove storage gen:mobs read[-1]
execute if score #loop gen.temp matches 1 run function gen:mobs/internal/registry/get_data/loop