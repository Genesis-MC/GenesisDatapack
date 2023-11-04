
#___NOTE_DUMMY_H___
# ___STOP___USING_ILLEGAL___IDENTIFIERS_H
# ___THIS_IS_NOT_STANDARD__COMPLIANT

# Called on the display entity of lez work stations.
# on passengers = both interaction and marker
# use if entity @s[type=...] to select specific entity
# SINCE THIS IS L-CLICK USE ```on attacker``` not ``` on target``
execute on passengers if entity @s[type=interaction] on attacker run function gu:generate
data modify storage gen:workstation cooking_pot.current_recipe.cooker_uuid set from storage gu:main out
execute on passengers if entity @s[type=marker] run data modify entity @s data.output_item set from storage gen:workstation cooking_pot.current_recipe

execute store result score @s gen.workstation.cooking_pot.ticking_time run data get storage gen:workstation cooking_pot.current_recipe.time_to_cook
scoreboard players operation @s gen.workstation.cooking_pot.total_time = @s gen.workstation.cooking_pot.ticking_time

function gen:workstation/cooking_pot/internal/clear_pot