data modify storage gen:lore_builder Item set value {Item:{id:"minecraft:air",Count:0b}}
data modify storage gen:lore_builder Item set from entity @s SelectedItem
scoreboard players reset * gen.items.lore_builder

execute unless data storage gen:lore_builder {Item:{tag:{gen:{lore_builder:{show:{all:1b}}}}}} unless data storage gen:lore_builder {Item:{tag:{gen:{lore_builder:{show:{all:0b}}}}}} run scoreboard players set $show_all gen.items.lore_builder -1
execute unless score $show_all gen.items.lore_builder matches -1 store success score $show_all gen.items.lore_builder if data storage gen:lore_builder {Item:{tag:{gen:{lore_builder:{show:{all:1b}}}}}}
execute if score $show_all gen.items.lore_builder matches -1 run function gen:items/lore_builder/show_all
execute if score $show_all gen.items.lore_builder matches 0 run function gen:items/lore_builder/show_exact
execute if score $show_all gen.items.lore_builder matches 1 run function gen:items/lore_builder/show_all
summon item ~ ~ ~ {UUID:[I;0,0,0,0],Tags:["new"],Item:{id:"minecraft:dirt",Count:1b},PickupDelay:50s}
data modify entity 00000000-0000-0000-0000-000000000000 Item.id set from storage gen:lore_builder Item.id
setblock ~ ~ ~ oak_sign{front_text:{messages:['{"selector":"00000000-0000-0000-0000-000000000000","italic":false}','""','""','""']}}
kill 00000000-0000-0000-0000-000000000000
execute unless data storage gen:lore_builder Item.tag.gen.lore_builder.original_name run data modify storage gen:lore_builder Item.tag.gen.lore_builder.original_name set from block ~ ~ ~ front_text.messages[0]
execute unless data storage gen:lore_builder Item.tag.gen.lore_builder.original_name run data modify storage gen:lore_builder Item.tag.gen.lore_builder.original_lore set from storage gen:lore_builder Item.tag.display.Name
execute unless data storage gen:lore_builder Item.tag.gen.lore_builder.original_lore[0] run data modify storage gen:lore_builder Item.tag.gen.lore_builder.original_lore set from storage gen:lore_builder Item.tag.display.Lore

data remove storage gen:lore_builder Item.tag.display.Lore[]
execute if score $show_banner_pattern gen.items.lore_builder matches 1 run data modify storage gen:lore_builder Item.tag.display.Lore append value '{"text":"sus"}'
data modify storage gen:lore_builder Item.tag.display.Lore append from storage gen:lore_builder Item.tag.gen.lore_builder.original_lore[]
data modify storage gen:lore_builder Item.tag.display.Name set from storage gen:lore_builder Item.tag.gen.lore_builder.original_name

item modify entity @s weapon gen:items/lore_builder/copy_lore
setblock ~ ~ ~ air