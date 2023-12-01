#####################################################################
# workstation/api/recipe/shapeless.mcfunction
# written by Eroxen
#
# Turns a list of ItemStacks into a shapeless recipe by
# combining the items into stacks and counting the total
# number of ingredients.
#
# Storage input:
# - gen:workstation recipe.input: (List<ItemStack>): list of input items
#
# Storage output:
# - gen:workstation recipe.output: {ingredients:(int), items:(List<ItemStack>)}
#####################################################################

data modify storage gen:temp build_recipe.iter set from storage gen:workstation recipe.input
data modify storage gen:temp build_recipe.out set value []
data modify storage gen:workstation recipe.output set value {ingredients:0,items:[]}
scoreboard players set #recipe.ingredients gen.workstation 0

data remove storage gen:temp build_recipe.iter[0].Slot
data modify storage gen:temp build_recipe.next set from storage gen:temp build_recipe.iter[0]
data remove storage gen:temp build_recipe.next.Count
execute store result storage gen:temp build_recipe.next.tags int 1 run data get storage gen:temp build_recipe.next.tag
execute if data storage gen:temp build_recipe.iter[0] run function gen:workstation/internal/recipe/build_shapeless/loop with storage gen:temp build_recipe

execute store result storage gen:workstation recipe.output.ingredients int 1 run scoreboard players get #recipe.ingredients gen.workstation
data modify storage gen:workstation recipe.output.items append from storage gen:temp build_recipe.out[].item