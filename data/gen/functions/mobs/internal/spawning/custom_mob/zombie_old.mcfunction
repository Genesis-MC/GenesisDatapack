scoreboard players operation #current_total_weight gen.temp = zombie gen.mobs.weight
data modify storage gen:mobs success set value []
data modify storage gen:mobs read set from storage gen:mobs registry.zombie
function gen:mobs/internal/spawning/requirements_old/check
data modify storage gen:mobs read set from storage gen:mobs success
#data modify storage gen:mobs read set from storage gen:mobs registry.zombie
#function gen:mobs/internal/spawning/requirements/level

#data modify storage gen:mobs read set from storage gen:mobs success
#tellraw @a[tag=gen.dev.debug.all] ["level all success:",{"nbt":"success[].name","storage": "gen:mobs","color":"blue"}]
#data modify storage gen:mobs success set value []

#function gen:mobs/internal/spawning/requirements/moon_phase

#data modify storage gen:mobs read set from storage gen:mobs success
#tellraw @a[tag=gen.dev.debug.all] ["moon phase all success:",{"nbt":"success[].name","storage": "gen:mobs","color":"red"}]
#data modify storage gen:mobs success set value []

#function gen:mobs/internal/spawning/requirements/block
#data modify storage gen:mobs read set from storage gen:mobs success
#tellraw @a[tag=gen.dev.debug.all] ["block all success:",{"nbt":"success[].name","storage": "gen:mobs","color":"yellow"}]
#data modify storage gen:mobs success set value []

execute store result storage gen:temp macro.max int 1 run scoreboard players get #current_total_weight gen.temp
function gen:math/api/random/macro_random_min_0 with storage gen:temp macro

scoreboard players set #w_loop gen.temp 1
function gen:mobs/internal/spawning/weight_choosing
#data modify storage gen:mobs read set from storage gen:mobs can_spawn.zombie

