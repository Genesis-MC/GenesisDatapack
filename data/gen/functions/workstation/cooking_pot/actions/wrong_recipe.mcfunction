
#___NOTE_DUMMY_H___
# ___STOP___USING_ILLEGAL___IDENTIFIERS_H
# ___THIS_IS_NOT_STANDARD__COMPLIANT

# Called on the display entity of lez work stations.
# on passengers = both interaction and marker
# use if entity @s[type=...] to select specific entity
# SINCE THIS IS R-CLICK USE ```on attacker``` not ``` on target``

execute store result score @s gen.workstation.cooking_pot.ticking_time run random value 0..500
scoreboard players operation @s gen.workstation.cooking_pot.total_time = @s gen.workstation.cooking_pot.ticking_time

data modify entity @s data.current_recipe set from storage gen:workstation cooking_pot.current_recipe
function gen:workstation/cooking_pot/internal/clear_pot