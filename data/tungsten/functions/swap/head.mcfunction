execute if score @s tungsten.uid.head matches 0 if score .new tungsten.uid.head matches 0 run return -1
data remove storage tungsten:player Item
data modify storage tungsten:player Item set from entity @s Inventory[{Slot:103b}]
execute if score .new tungsten.uid.head matches -1 run function tungsten:init/head
scoreboard players operation @s tungsten.uid.head = .new tungsten.uid.head
scoreboard players set .modified tungsten 0
function #tungsten:swap/head
execute if score .modified tungsten matches 1 run item modify entity @s armor.head tungsten:merge_tags
