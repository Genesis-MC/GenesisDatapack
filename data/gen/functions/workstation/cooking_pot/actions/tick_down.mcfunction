
#___NOTE_DUMMY_H___
# ___STOP___USING_ILLEGAL___IDENTIFIERS_H
# ___THIS_IS_NOT_STANDARD__COMPLIANT

# Called on the display entity of lez work stations.
# on passengers = both interaction and marker
# use if entity @s[type=...] to select specific entity
# SINCE THIS IS R-CLICK USE ```on attacker``` not ``` on target``

scoreboard players remove @s gen.workstation.cooking_pot.ticking_time 1
function gen:workstation/cooking_pot/internal/effect/cook
execute if score @s gen.workstation.cooking_pot.ticking_time matches ..0 run function gen:workstation/cooking_pot/actions/finished_cooking