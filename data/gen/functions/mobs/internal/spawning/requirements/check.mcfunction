data modify storage gen:mobs success set from storage gen:mobs read
data remove storage gen:mobs success[{requirements:{}}]
data modify storage gen:mobs check_requirements append from storage gen:mobs read[{requirements:{}}]
execute if score .player_count gen.world matches 2.. run function gen:mobs/internal/spawning/requirements/dimension
execute if data storage gen:mobs check_requirements[].requirements.biome run function gen:mobs/internal/spawning/requirements/biome
#tellraw @p ["check_requirements",{"nbt":"check_requirements[].name","storage": "gen:mobs","color":"red"}]
#tellraw @p ["success",{"nbt":"success[].name","storage": "gen:mobs","color":"yellow"}]
#tellraw @p ["requirements",{"nbt":"check_requirements[].name","storage": "gen:mobs","color":"dark_red"}]

function gen:mobs/internal/spawning/requirements/check/loop
#tellraw @p ["success",{"nbt":"success[].name","storage": "gen:mobs","color":"gold"}]