
execute if entity @s[nbt=!{SelectedItem:{}}] run return 0
scoreboard players set #temp_for_toggling gen.temp 0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{HideFlags:195}}}] run scoreboard players set #temp_for_toggling gen.temp 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_sword",tag:{HideFlags:194}}}] run scoreboard players set #temp_for_toggling gen.temp 2

#if genesis item & enchanting mode is off
execute if score #temp_for_toggling gen.temp matches 1 run data modify storage gen:enchant_toggle item_nbt set from entity @s SelectedItem.tag
execute if score #temp_for_toggling gen.temp matches 1 run item replace entity @s weapon.mainhand with stone_sword{Unbreakable:1b}
execute if score #temp_for_toggling gen.temp matches 1 run item modify entity @s weapon.mainhand gen:toggle_enchants/show_gen
execute if score #temp_for_toggling gen.temp matches 1 run return 0
#if genesis item & enchanting mode is on
execute if score #temp_for_toggling gen.temp matches 2 run data modify storage gen:enchant_toggle item_nbt set from entity @s SelectedItem.tag
execute if score #temp_for_toggling gen.temp matches 2 run item replace entity @s weapon.mainhand with warped_fungus_on_a_stick
execute if score #temp_for_toggling gen.temp matches 2 run item modify entity @s weapon.mainhand gen:toggle_enchants/hide_gen
execute if score #temp_for_toggling gen.temp matches 2 run return 0
#if vanilla item
item modify entity @s weapon.mainhand gen:toggle_enchants/mainhand