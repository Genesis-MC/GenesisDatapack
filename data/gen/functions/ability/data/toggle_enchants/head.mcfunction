
execute if entity @s[nbt=!{Inventory:[{Slot:103b}]}] run return 0
scoreboard players set #temp_for_toggling gen.temp 0
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{HideFlags:195}}]}] run scoreboard players set #temp_for_toggling gen.temp 1
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{HideFlags:194}}]}] run scoreboard players set #temp_for_toggling gen.temp 2

#if playerhead & enchanting mode is off
execute if score #temp_for_toggling gen.temp matches 1 run data modify storage gen:enchant_toggle item_nbt set from entity @s Inventory[103].tag
execute if score #temp_for_toggling gen.temp matches 1 run item modify entity @s armor.head gen:toggle_enchants/show_gen
execute if score #temp_for_toggling gen.temp matches 1 run return 0
#if playerhead & enchanting mode is on
execute if score #temp_for_toggling gen.temp matches 1 run data modify storage gen:enchant_toggle item_nbt set from entity @s SelectedItem.tag
execute if score #temp_for_toggling gen.temp matches 2 run item modify entity @s armor.head gen:toggle_enchants/hide_gen
execute if score #temp_for_toggling gen.temp matches 2 run return 0
#if item is not a playerhead
item modify entity @s armor.head gen:toggle_enchants/armor