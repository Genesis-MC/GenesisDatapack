#___NOTE_DUMMY_H___
# ___STOP___USING_ILLEGAL___IDENTIFIERS_H
# ___THIS_IS_NOT_STANDARD__COMPLIANT

# Called on the display entity of lez work stations.
# on passengers = both interaction and marker
# use if entity @s[type=...] to select specific entity
summon item_display ~ ~ ~ {Rotation:[0F,90F],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.30f,0.30f,0.30f]},item:{id:"ice",Count:1b},Tags:["new_1"]}

execute on passengers if entity @s[type=marker] run data modify entity @e[tag=new_1,limit=1] item.id set from entity @s data.items[-1].item.id
execute as @e[tag=new_1,limit=1] run function gu:generate

data get storage gu:main out

execute on passengers if entity @s[type=marker] run data modify entity @s data.items[-1].item_display_uuid set from storage gu:main out

tag @e remove new_1