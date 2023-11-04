#___NOTE_DUMMY_H___
# ___STOP___USING_ILLEGAL___IDENTIFIERS_H
# ___THIS_IS_NOT_STANDARD__COMPLIANT

# Called on the display entity of lez work stations.
# on passengers = both interaction and marker
# use if entity @s[type=...] to select specific entity
# SINCE THIS IS R-CLICK USE ```on target``` not ```on attacker```

scoreboard players set #action gen.temp 1

data modify storage gen:temp uuid set value []
execute on passengers if entity @s[type=marker] run data modify storage gen:temp uuid set from entity @s data.items[-1].owner_uuid
execute on passengers if entity @s[type=interaction] on target store success score #flag gen.temp run data modify storage gen:temp uuid set from entity @s UUID

execute if score #flag gen.temp matches 1 run return 0
# ; i always put a ; after /return 

execute on passengers if entity @s[type=interaction] on target at @s run summon item ~ ~ ~ {Item:{id:"dirt",Count:1b},Tags:["new"]}

execute on passengers if entity @s[type=marker] run data modify entity @e[tag=new,limit=1] Item set from entity @s data.items[-1].item
execute on passengers if entity @s[type=marker] run function gen:workstation/cooking_pot/internal/macro_kill_uuid with entity @s data.items[-1]


execute on passengers if entity @s[type=marker] run data remove entity @s data.items[-1]
tag @e remove new