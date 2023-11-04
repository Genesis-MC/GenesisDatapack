#___NOTE_DUMMY_H___
# ___STOP___USING_ILLEGAL___IDENTIFIERS_H
# ___THIS_IS_NOT_STANDARD__COMPLIANT

# Called on the display entity of lez work stations.
# on passengers = both interaction and marker
# use if entity @s[type=...] to select specific entity
# SINCE THIS IS R-CLICK USE ```on attacker``` not ``` on target```
execute on passengers if data entity @s[type=marker] data.items[8] run return 0
 
scoreboard players set #action gen.temp 1
data modify storage gen:temp temp set value {}
execute on passengers if entity @s[type=interaction] on attacker run data modify storage gen:temp temp.item set from entity @s SelectedItem
execute on passengers if entity @s[type=interaction] on attacker run data modify storage gen:temp temp.owner_uuid set from entity @s UUID
data remove storage gen:temp temp.item.Count

execute on passengers if entity @s[type=marker] run data modify entity @s data.items append from storage gen:temp temp

execute on passengers if entity @s[type=interaction] on attacker run item modify entity @s weapon.mainhand gen:reduce_count_by_1
scoreboard players set #item_count gen.temp 0
execute store result score #item_count gen.temp on passengers if entity @s[type=marker] if data entity @s data.items[]
execute if score #item_count gen.temp matches 1 align zxy positioned ~0.75 ~1.20 ~0.8 run function gen:workstation/cooking_pot/internal/add_item_display
execute if score #item_count gen.temp matches 2 align zxy positioned ~0.75 ~1.20 ~0.5 run function gen:workstation/cooking_pot/internal/add_item_display
execute if score #item_count gen.temp matches 3 align zxy positioned ~0.75 ~1.20 ~0.18 run function gen:workstation/cooking_pot/internal/add_item_display
execute if score #item_count gen.temp matches 4 align zxy positioned ~0.5 ~1.20 ~0.8 run function gen:workstation/cooking_pot/internal/add_item_display
execute if score #item_count gen.temp matches 5 align zxy positioned ~0.5 ~1.20 ~0.5 run function gen:workstation/cooking_pot/internal/add_item_display
execute if score #item_count gen.temp matches 6 align zxy positioned ~0.5 ~1.20 ~0.18 run function gen:workstation/cooking_pot/internal/add_item_display
execute if score #item_count gen.temp matches 7 align zxy positioned ~0.2 ~1.20 ~0.8 run function gen:workstation/cooking_pot/internal/add_item_display
execute if score #item_count gen.temp matches 8 align zxy positioned ~0.2 ~1.20 ~0.5 run function gen:workstation/cooking_pot/internal/add_item_display
execute if score #item_count gen.temp matches 9 align zxy positioned ~0.2 ~1.20 ~0.18 run function gen:workstation/cooking_pot/internal/add_item_display


