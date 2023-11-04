#___NOTE_DUMMY_H___
# ___STOP___USING_ILLEGAL___IDENTIFIERS_H
# ___THIS_IS_NOT_STANDARD__COMPLIANT

# Called on the display entity of lez work stations.
# on passengers = both interaction and marker
# use if entity @s[type=...] to select specific entity
# SINCE THIS IS R-CLICK USE ```on attacker``` not ``` on target```

data modify storage gen:temp macro.recipe_items set value []
data modify storage gen:temp macro.item_count set value 0
execute on passengers if entity @s[type=marker] store result storage gen:temp macro.item_count int 1 if data entity @s data.items[]
execute on passengers if entity @s[type=marker] run data modify storage gen:temp macro.recipe_items append from entity @s data.items[].item

function gen:workstation/cooking_pot/internal/find_recipe/macro_search with storage gen:temp macro

execute if data storage gen:workstation {cooking_pot:{current_recipe:"null"}} run function gen:workstation/cooking_pot/actions/wrong_recipe
execute unless data storage gen:workstation {cooking_pot:{current_recipe:"null"}} run function gen:workstation/cooking_pot/actions/correct_recipe