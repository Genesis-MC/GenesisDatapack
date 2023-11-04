#___NOTE_DUMMY_H___
# ___STOP___USING_ILLEGAL___IDENTIFIERS_H
# ___THIS_IS_NOT_STANDARD__COMPLIANT

# Called on the display entity of lez work stations.
# on passengers = both interaction and marker
# use if entity @s[type=...] to select specific entity
# SINCE THIS IS R-CLICK USE ```on target``` not ```on attacker```
scoreboard players set #action gen.temp 1
function gen:workstation/cooking_pot/actions/remove_item
execute on passengers if data entity @s[type=marker] data.items[0] on vehicle run function gen:workstation/cooking_pot/actions/remove_all_items 