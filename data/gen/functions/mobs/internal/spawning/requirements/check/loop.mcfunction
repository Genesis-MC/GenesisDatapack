scoreboard players set #success gen.temp 1

execute if data storage gen:mobs current_item.requirements.level run function gen:mobs/internal/spawning/requirements/level

#execute if score #success gen.temp matches 1 if data storage gen:mobs current_item.requirements.moon_phase run function gen:mobs/internal/spawning/requirements/moon_phase

execute if score #success gen.temp matches 1 if data storage gen:mobs current_item.requirements.block at @s in minecraft:overworld run function gen:mobs/internal/spawning/requirements/block

execute if score #success gen.temp matches 1 run function gen:mobs/internal/spawning/requirements/check/success
execute if score #success gen.temp matches 0 run function gen:mobs/internal/spawning/requirements/check/failed
