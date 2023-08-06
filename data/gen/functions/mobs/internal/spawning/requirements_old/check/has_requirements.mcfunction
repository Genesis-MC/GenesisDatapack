scoreboard players set #req_resetted gen.temp 0

execute if data storage gen:mobs read[-1].requirements.level run function gen:mobs/internal/spawning/requirements_old/level

execute if score #success gen.temp matches 1 if data storage gen:mobs read[-1].requirements.moon_phase run function gen:mobs/internal/spawning/requirements_old/moon_phase
execute if score #success gen.temp matches 1 if data storage gen:mobs read[-1].requirements.block run function gen:mobs/internal/spawning/requirements_old/block
