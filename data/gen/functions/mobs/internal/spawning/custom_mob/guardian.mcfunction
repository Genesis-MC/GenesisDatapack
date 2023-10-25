scoreboard players operation #current_total_weight gen.temp = guardian gen.mobs.weight
data modify storage gen:mobs success set value []
data modify storage gen:mobs check_requirements set value []
data modify storage gen:mobs read set from storage gen:mobs can_spawn.guardian
function gen:mobs/internal/spawning/requirements/check
execute store result storage gen:temp macro.max int 1 run scoreboard players get #current_total_weight gen.temp
function gen:math/api/random/macro_random_min_0 with storage gen:temp macro
scoreboard players set #w_loop gen.temp 1
execute if data storage gen:mobs success[0] run function gen:mobs/internal/spawning/weight_choosing
execute unless data storage gen:mobs success[0] run function gen:mobs/internal/new_mob