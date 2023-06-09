scoreboard players add index gen.crops.calc 1
execute store success score different gen.crops.calc run data modify storage gen:crops search_index[0] set from storage gen:crops search_string

execute if score different gen.crops.calc matches 0 run return 0

data remove storage gen:crops search_index[0]
execute if data storage gen:crops search_index[0] run function gen:crops/internal/search_index/loop