execute if score @s tungsten.uid.feet matches 0 if score .new tungsten.uid.feet matches 0 run return -1
data modify storage tungsten:player Item set value {}
data modify storage tungsten:player Item set from entity @s Inventory[{Slot:100b}]
execute if score .new tungsten.uid.feet matches -1 run function tungsten:init/feet
scoreboard players operation @s tungsten.uid.feet = .new tungsten.uid.feet
scoreboard players set .modified tungsten 0
function #tungsten:swap/feet
execute if score .modified tungsten matches 1 run item modify entity @s armor.feet tungsten:merge_tags
