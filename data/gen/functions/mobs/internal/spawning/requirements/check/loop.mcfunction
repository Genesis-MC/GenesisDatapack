
scoreboard players set #success gen.temp 1
execute if data storage gen:mobs check_requirements[-1].requirements.level run function gen:mobs/internal/spawning/requirements/level

#execute if score #success gen.temp matches 1 if data storage gen:mobs check_requirements[-1].requirements.moon_phase run function gen:mobs/internal/spawning/requirements/moon_phase

execute if score #success gen.temp matches 1 if data storage gen:mobs check_requirements[-1].requirements.block run function gen:mobs/internal/spawning/requirements/block

execute if score #success gen.temp matches 1 run function gen:mobs/internal/spawning/requirements/check/success
execute if score #success gen.temp matches 0 run function gen:mobs/internal/spawning/requirements/check/failed
execute store success score #continueLoop gen.temp run data remove storage gen:mobs check_requirements[-1]
execute if score #continueLoop gen.temp matches 1 run function gen:mobs/internal/spawning/requirements/check/loop