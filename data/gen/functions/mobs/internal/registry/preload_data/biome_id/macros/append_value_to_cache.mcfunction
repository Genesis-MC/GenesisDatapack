$data modify storage $(storage) $(path) append from storage gen:mobs cache.biome_ids[{Key:"$(biome)"}].Value
#$tellraw @p "$(biome)"

#$tellraw @a "$(storage) $(path) append from storage gen:mobs cache.biome_ids[{Key:"$(biome)"}].Value"