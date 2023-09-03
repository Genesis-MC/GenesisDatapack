data modify storage gen:mobs success set from storage gen:mobs read
data remove storage gen:mobs success[{requirements:{}}]
data modify storage gen:mobs check_biome_requirements set value []
data modify storage gen:mobs check_requirements append from storage gen:mobs read[{requirements:{}}]
#        tellraw @p {"nbt":"read","storage": "gen:mobs","color":"red"}
data modify storage gen:mobs check_biome_requirements append from storage gen:mobs check_requirements[{requirements:{biomes_search_key:1b}}]

data remove storage gen:mobs check_requirements[{requirements:{biomes_search_key:1b}}]

execute store result storage gen:temp macro.id int 1 run scoreboard players get @s gen.biome
function gen:mobs/internal/spawning/requirements/biome with storage gen:temp macro

execute unless score .player_count gen.world matches 1 run function gen:mobs/internal/spawning/requirements/dimension
execute store result score #wlm_elements gen.temp if data storage gen:mobs success[].weight_level_multiplier
execute unless score #wlm_elements gen.temp matches 0 run function gen:mobs/internal/spawning/weight_level_multiplier/start

#tellraw @p ["check_requirements ",{"nbt":"check_requirements[].name","storage": "gen:mobs","color":"red"}]
#tellraw @p ["success ",{"nbt":"success[].name","storage": "gen:mobs","color":"yellow"}]
#tellraw @p ["requirements ",{"nbt":"check_requirements[].name","storage": "gen:mobs","color":"dark_red"}]

execute store result score #cr_elements gen.temp if data storage gen:mobs check_requirements[]
function gen:mobs/internal/spawning/requirements/check/loop
#tellraw @p ["success",{"nbt":"success[].name","storage": "gen:mobs","color":"gold"}]
