$data modify storage gen:mobs read set from storage gen:mobs can_spawn.$(registry)
data remove storage gen:mobs read[{requirements:{}}]
scoreboard players reset #total_weight gen.temp
function gen:mobs/internal/registry/get_data/loop
$scoreboard players operation .$(registry) gen.mobs.weight = #total_weight gen.temp 