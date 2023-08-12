execute if score @s tungsten.uid.chest matches 0 if score .new tungsten.uid.chest matches 0 run return -1
data modify storage tungsten:player Item set value {}
data modify storage tungsten:player Item set from entity @s Inventory[{Slot:102b}]
execute if score .new tungsten.uid.chest matches -1 run function tungsten:init/chest
scoreboard players operation @s tungsten.uid.chest = .new tungsten.uid.chest
scoreboard players set .modified tungsten 0
function #tungsten:swap/chest
execute if score .modified tungsten matches 1 run item modify entity @s armor.chest tungsten:merge_tags
