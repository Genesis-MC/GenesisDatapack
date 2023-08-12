execute if score @s tungsten.uid.offhand matches 0 if score .new tungsten.uid.offhand matches 0 run return -1
data modify storage tungsten:player Item set value {}
data modify storage tungsten:player Item set from entity @s Inventory[{Slot:-106b}]
execute if score .new tungsten.uid.offhand matches -1 run function tungsten:init/offhand
scoreboard players operation @s tungsten.uid.offhand = .new tungsten.uid.offhand
scoreboard players set .modified tungsten 0
function #tungsten:swap/offhand
execute if score .modified tungsten matches 1 run item modify entity @s weapon.offhand tungsten:merge_tags
