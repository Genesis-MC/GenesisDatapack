#scoreboard players set #req_resetted gen.temp 0
#tellraw @p ["current item",{"nbt":"current_item.requirements.level","storage": "gen:mobs","color":"red"}]

execute if data storage gen:mobs current_item.requirements.level run function gen:mobs/internal/spawning/requirements/level

execute if score #success gen.temp matches 1 if data storage gen:mobs current_item.requirements.block at @s in minecraft:overworld run function gen:mobs/internal/spawning/requirements/block
