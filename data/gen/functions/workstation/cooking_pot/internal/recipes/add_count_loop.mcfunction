data modify storage gen:temp input[-1].item_count set value 0
execute store result storage gen:temp input[-1].item_count int 1 if data storage gen:temp input[-1].recipe_items[]
data modify storage gen:temp output append from storage gen:temp input[-1]
data remove storage gen:temp input[-1]

execute if data storage gen:temp input[0] run function gen:workstation/cooking_pot/internal/recipes/add_count_loop