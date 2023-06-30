tag @s add gen.tracked_item

data modify storage gen:core ground_item set from entity @s Item
execute if data storage gen:core {ground_item:{id:"minecraft:phantom_membrane",Count:1b}} at @s run function gen:professions/mineralogy/internal/crystalarium/crystalariumitem
function gen:core/data/item/call_on_item