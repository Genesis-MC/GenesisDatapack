data modify storage gen:mobs wlm set value []
data modify storage gen:mobs wlm append from storage gen:mobs success[{weight_level_multiplier:{}}]
data remove storage gen:mobs success[{weight_level_multiplier:{}}]
function gen:mobs/internal/spawning/weight_level_multiplier/loop