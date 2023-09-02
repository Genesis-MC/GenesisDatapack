# if min is declared but not max it will set max to the int limit 
data modify storage gen:temp macro.path set value "biome_list_converted_to_id"
data modify storage gen:temp macro.storage set value "gen:temp"
data modify storage gen:temp biomes set from storage gen:mobs read2[-1].requirements.biomes
#tellraw @p ["LVL  ",{"nbt":"biomes","storage":"gen:mobs","color":"yellow"}]
function gen:mobs/internal/registry/preload_data/biome_id/convert/loop

#after we loop we set it
#tellraw @p ["BLCTD  ",{"nbt":"biome_list_converted_to_id","storage":"gen:temp","color":"yellow"}]
data modify storage gen:mobs read2[-1].requirements.biomes set from storage gen:temp biome_list_converted_to_id 
data modify storage gen:temp macro set value {}
data modify storage gen:temp biome_list_converted_to_id set value []