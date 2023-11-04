data modify storage gen:temp input set from storage gen:workstation cooking_pot.recipes
data modify storage gen:temp output set value []
function gen:workstation/cooking_pot/internal/recipes/add_count_loop
data modify storage gen:workstation cooking_pot.recipes set from storage gen:temp output
