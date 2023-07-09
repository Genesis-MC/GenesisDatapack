scoreboard players set #success gen.temp 1
execute store success score #has_req gen.temp if data storage gen:mobs read[-1].requirements
execute if score #req_resetted gen.temp matches 0 run function gen:mobs/internal/spawning/requirements_old/check/reset_requirements
execute if score #has_req gen.temp matches 1 run function gen:mobs/internal/spawning/requirements_old/check/has_requirements

execute if score #success gen.temp matches 0 run function gen:mobs/internal/spawning/requirements_old/check/failed
execute if score #success gen.temp matches 1 run function gen:mobs/internal/spawning/requirements_old/check/success
execute store success score #bool gen.temp run data remove storage gen:mobs read[-1]
execute if score #bool gen.temp matches 1 run function gen:mobs/internal/spawning/requirements_old/check/loop
