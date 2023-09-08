$execute store success score #is_cached gen.temp if data storage gen:mobs cache.biome_ids[{Key:"$(biome)"}]


#$tellraw @p "input $(biome)"
#tellraw @p {"score":{"name":"#is_cached","objective":"gen.temp"}}
#execute if score #is_cached gen.temp matches 1 run tellraw @p ["CACHED ",{"nbt":"macro.biome","storage":"gen:temp","color":"yellow"}]
#execute if score #is_cached gen.temp matches 0 run tellraw @p ["NOT !  ",{"nbt":"macro.biome","storage":"gen:temp","color":"red"}]