data modify storage gen:mobs biome_hashes set value []
data modify storage gen:mobs biomes set from storage gen:mobs current_entity.requirements.biomes
function gen:mobs/internal/registry/preload_data/biome_hash/loop
data modify storage gen:mobs current_entity.requirements.biomes set from storage gen:mobs biome_hashes