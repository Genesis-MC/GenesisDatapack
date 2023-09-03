data modify storage gen:temp biome set from storage gen:temp biomes[-1]
# tellraw @p [{"text":"biomes : "},{"nbt":"biomes","storage": "gen:temp","color":"red"}]
data modify storage gen:temp macro.value set value 0
data modify storage gen:temp macro.biome set from storage gen:temp biome 
data modify storage gen:temp str set from storage gen:temp biome
#tellraw @p ["LVIST ",{"nbt":"biomes","storage":"gen:temp"}]
#returns #is_cached
#tellraw @p ["M ",{"nbt":"macro.biome","storage":"gen:temp"}]
function gen:mobs/internal/registry/preload_data/biome_id/macros/is_cached with storage gen:temp macro


execute if score #is_cached gen.temp matches 0 run function gen:mobs/internal/registry/preload_data/biome_id/loop

#data modify storage 
#function gen:mobs/internal/registry/preload_data/biome_id/macros/append_value with

data remove storage gen:temp biomes[-1]
execute if data storage gen:temp biomes[0] run function gen:mobs/internal/registry/preload_data/biome_id/start