scoreboard players set .index gen.crops.calc -1
execute if data storage gen:crops search_index[0] run function gen:crops/internal/search_index/loop
execute unless data storage gen:crops search_index[0] run scoreboard players set .index gen.crops.calc -1