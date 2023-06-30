data modify storage gen:mobs success set from storage gen:mobs read
data remove storage gen:mobs success[{requirements:{}}]
data modify storage gen:mobs check_requirements append from storage gen:mobs read[{requirements:{}}]
#tellraw @p ["read",{"nbt":"read","storage": "gen:mobs","color":"red"}]
#tellraw @p ["success",{"nbt":"success","storage": "gen:mobs","color":"yellow"}]
#tellraw @p ["requirements",{"nbt":"check_requirements","storage": "gen:mobs","color":"dark_red"}]

function gen:mobs/internal/spawning/requirements/check/list/root