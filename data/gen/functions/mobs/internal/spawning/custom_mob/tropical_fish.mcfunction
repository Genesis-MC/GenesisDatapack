scoreboard players operation #current_total_weight gen.temp = .tropical_fish gen.mobs.weight
data modify storage gen:mobs success set value []
data modify storage gen:mobs check_requirements set value []
data modify storage gen:mobs read set from storage gen:mobs can_spawn.tropical_fish
function gen:mobs/internal/spawning/requirements/check
scoreboard players set #random.min gen.math 0
scoreboard players operation #random.max gen.math = #current_total_weight gen.temp
function gen:math/api/random/uniform_range
scoreboard players set #w_loop gen.temp 1
execute if data storage gen:mobs success[0] run function gen:mobs/internal/spawning/weight_choosing
execute unless data storage gen:mobs success[0] run function gen:mobs/internal/new_mob