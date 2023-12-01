data modify storage gen:workstation recipe.input set from entity @s data.items
function gen:workstation/api/recipe/shapeless
function gen:workstation/cooking_pot/data/recipes

execute if data storage gen:workstation {cooking_pot:{current_recipe:"null"}} run function gen:workstation/cooking_pot/actions/wrong_recipe
execute unless data storage gen:workstation {cooking_pot:{current_recipe:"null"}} run function gen:workstation/cooking_pot/actions/correct_recipe