data modify storage gen:mobs success append from storage gen:mobs check_requirements[-1]

execute store result score w t run data get storage gen:mobs check_requirements[-1].weight

scoreboard players operation #current_total_weight gen.temp += w t

execute if data storage gen:mobs success[-1].weight_level_multiplier run function gen:mobs/internal/spawning/weight_level_multiplier/do