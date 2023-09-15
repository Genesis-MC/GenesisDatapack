data modify storage gen:temp macro.biome set from storage gen:mobs biomes[-1]

function gen:mobs/internal/registry/preload_data/biome_hash/macro_get_hash with storage gen:temp macro
function gen:mobs/internal/registry/preload_data/biome_hash/macro_safe_append with storage gen:temp macro_result

data remove storage gen:mobs biomes[-1] 
execute if data storage gen:mobs biomes[0] run function gen:mobs/internal/registry/preload_data/biome_hash/loop