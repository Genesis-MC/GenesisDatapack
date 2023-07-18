execute store result score #current_weight gen.temp run data get storage gen:mobs read[-1].weight
scoreboard players operation #total_weight gen.temp += #current_weight gen.temp
data remove storage gen:mobs read[-1]
execute if data storage gen:mobs read[0] run function gen:mobs/internal/registry/get_data/loop