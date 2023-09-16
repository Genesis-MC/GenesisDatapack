
data modify storage gen:mobs current_entity set from storage gen:mobs read[-1]

function gen:mobs/internal/registry/preload_data/level_max_fix

execute if data storage gen:mobs current_entity.requirements.biomes run function gen:mobs/internal/registry/preload_data/biome_hash
data modify storage gen:mobs preloaded_data append from storage gen:mobs current_entity
#data modify storage gen:temp biomes set value []
#data modify storage gen:temp biomes set from storage gen:mobs read[-1].requirements.biomes
#execute if data storage gen:temp biomes[0] run function gen:mobs/internal/registry/preload_data/biome_id/start//


#tellraw @p {"storage":"gen:mobs","nbt":"current_entity.name"}

#execute if data storage gen:mobs read2[-1].requirements.biomes[0] run say CHANGED

#execute if data storage gen:mobs read2[-1].requirements.biomes run function gen:mobs/internal/registry/preload_data/biome_id/convert/start

data remove storage gen:mobs read[-1]
execute if data storage gen:mobs read[0] run function gen:mobs/internal/registry/preload_data/loop