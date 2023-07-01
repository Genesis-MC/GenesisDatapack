scoreboard players operation #current_total_weight gen.temp = .zombie gen.mobs.weight

#scoreboard players set #random.min gen.math 0
#scoreboard players operation #random.max gen.math = #current_total_weight gen.temp
#function gen:math/api/random/uniform_range

data modify storage gen:mobs success set value []
data modify storage gen:mobs check_requirements set value []
data modify storage gen:mobs read set from storage gen:mobs can_spawn.zombie
function gen:mobs/internal/spawning/requirements/check
#data modify storage gen:mobs read set from storage gen:mobs can_spawn.zombie
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

scoreboard players set #random.min gen.math 0
scoreboard players operation #random.max gen.math = #current_total_weight gen.temp
function gen:math/api/random/uniform_range

scoreboard players set #w_loop gen.temp 1
execute if data storage gen:mobs success[0] run function gen:mobs/internal/spawning/weight_choosing
#data modify storage gen:mobs read set from storage gen:mobs can_spawn.zombie

