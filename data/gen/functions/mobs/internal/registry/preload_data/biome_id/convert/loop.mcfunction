#tellraw @p ["HLEL ",{"nbt":"biomes","storage":"gen:temp"}]
# outer loop 
data modify storage gen:temp macro.biome set from storage gen:temp biomes[-1]
function gen:mobs/internal/registry/preload_data/biome_id/macros/append_value_to_cache with storage gen:temp macro

data remove storage gen:temp biomes[-1]
execute if data storage gen:temp biomes[0] run function gen:mobs/internal/registry/preload_data/biome_id/convert/loop