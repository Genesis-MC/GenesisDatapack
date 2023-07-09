data modify storage gen:mobs read2 append from storage gen:mobs read[-1]
function gen:mobs/internal/registry/preload_data/level_max_fix
data remove storage gen:mobs read[-1]
execute if data storage gen:mobs read[0] run function gen:mobs/internal/registry/preload_data/loop