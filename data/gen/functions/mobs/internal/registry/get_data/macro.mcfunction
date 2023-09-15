data modify storage gen:mobs read set value []
$data modify storage gen:mobs read append from storage gen:mobs can_spawn.$(can_spawn)[]
data remove storage gen:mobs read[{requirements:{}}]
scoreboard players reset #total_weight gen.temp
function gen:mobs/internal/registry/get_data/loop
$scoreboard players operation $(can_spawn) gen.mobs.weight = #total_weight gen.temp 
$execute if score $(can_spawn) gen.mobs.weight matches 0 run scoreboard players reset $(can_spawn) gen.mobs.weight
