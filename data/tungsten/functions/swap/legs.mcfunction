execute if score @s tungsten.uid.legs matches 0 if score .new tungsten.uid.legs matches 0 run return -1
data remove storage tungsten:player Item
data modify storage tungsten:player Item set from entity @s Inventory[{Slot:101b}]
execute if score .new tungsten.uid.legs matches -1 run function tungsten:init/legs
scoreboard players operation @s tungsten.uid.legs = .new tungsten.uid.legs
scoreboard players set .modified tungsten 0
function #tungsten:swap/legs
execute if score .modified tungsten matches 1 run item modify entity @s armor.legs tungsten:replace_tags
