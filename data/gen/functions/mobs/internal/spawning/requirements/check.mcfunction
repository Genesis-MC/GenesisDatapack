data modify storage gen:mobs success set from storage gen:mobs read
data remove storage gen:mobs success[{requirements:{}}]


data modify storage gen:mobs check_requirements append from storage gen:mobs read[{requirements:{}}]
execute unless score .player_count gen.world matches 1 run function gen:mobs/internal/spawning/requirements/dimension
execute if data storage gen:mobs check_requirements[].requirements.biome run function gen:mobs/internal/spawning/requirements/biome
execute store result score #wlm_elements gen.temp if data storage gen:mobs success[].weight_level_multiplier
execute if score #wlm_elements gen.temp matches 1.. run function gen:mobs/internal/spawning/weight_level_multiplier/start

#tellraw @p ["check_requirements",{"nbt":"check_requirements[].name","storage": "gen:mobs","color":"red"}]
#tellraw @p ["success",{"nbt":"success[].name","storage": "gen:mobs","color":"yellow"}]
#tellraw @p ["requirements",{"nbt":"check_requirements[].name","storage": "gen:mobs","color":"dark_red"}]
execute store result score #cr_elements gen.temp if data storage gen:mobs check_requirements[]
function gen:mobs/internal/spawning/requirements/check/loop
#tellraw @p ["success",{"nbt":"success[].name","storage": "gen:mobs","color":"gold"}]
