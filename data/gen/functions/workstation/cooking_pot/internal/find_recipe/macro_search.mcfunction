data modify storage gen:workstation cooking_pot.current_recipe set value "null"
$data modify storage gen:workstation cooking_pot.current_recipe set from storage gen:workstation cooking_pot.recipes[{item_count:$(item_count),recipe_items:$(recipe_items)}]
#                                  ^^^^^^^^^^^^^^
# ^^^ includes the square brackets ^^^
#              includes [] weird but okay
# $say $(recipe_items)
# tellraw @p {"nbt":"cooking_pot.current_recipe","storage": "gen:workstation","color":"red"}
