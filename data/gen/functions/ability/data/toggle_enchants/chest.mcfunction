scoreboard players set #temp_for_toggling gen.temp 0
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{HideFlags:1}}]}] run scoreboard players set #temp_for_toggling gen.temp 1
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{HideFlags:131}}]}] run scoreboard players set #temp_for_toggling gen.temp 2
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{HideFlags:130}}]}] run scoreboard players set #temp_for_toggling gen.temp 3

#if vanilla item & enchants are hidden
execute if score #temp_for_toggling gen.temp matches 1 run item modify entity @s armor.chest gen:toggle_enchants/show
execute if score #temp_for_toggling gen.temp matches 1 run return 0
#if genesis item & enchanting mode is off
execute if score #temp_for_toggling gen.temp matches 2 run item modify entity @s armor.chest gen:toggle_enchants/show_gen
execute if score #temp_for_toggling gen.temp matches 2 run return 0
#if genesis item & enchanting mode is on
execute if score #temp_for_toggling gen.temp matches 3 run item modify entity @s armor.chest gen:toggle_enchants/hide_gen
execute if score #temp_for_toggling gen.temp matches 3 run return 0
#if vanilla item & enchants are shown
item modify entity @s armor.chest gen:toggle_enchants/hide