scoreboard players reset @s gen.item.use.warped_fungus_on_a_stick

data remove storage gen:core used_wfoas
execute if predicate gen:core/item/wfoas_in_mainhand run data modify storage gen:core used_wfoas set from entity @s SelectedItem
execute if predicate gen:core/item/wfoas_in_offhand run data modify storage gen:core used_wfoas set from entity @s Inventory[{Slot:-106b}]

execute if data storage gen:core used_wfoas.tag.gen.on_click.dev run function gen:dev/api/use_wfoas