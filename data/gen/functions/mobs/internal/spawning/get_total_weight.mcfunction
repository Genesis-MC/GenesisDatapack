execute store result score #current_weight gen.temp run data get storage gen:mobs read[-1].weight
scoreboard players operation #total_weight gen.temp += #current_weight gen.temp
data remove storage gen:mobs read[-1]
execute unless score #current_weight gen.temp matches 0 run function gen:mobs/internal/spawning/get_total_weight