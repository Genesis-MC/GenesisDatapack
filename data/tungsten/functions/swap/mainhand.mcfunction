execute if score @s tungsten.uid.mainhand matches 0 if score .new tungsten.uid.mainhand matches 0 run return -1
data remove storage tungsten:player Item
data modify storage tungsten:player Item set from entity @s SelectedItem
execute if score .new tungsten.uid.mainhand matches -1 run function tungsten:init/mainhand
scoreboard players operation @s tungsten.uid.mainhand = .new tungsten.uid.mainhand
scoreboard players set .modified tungsten 0
function #tungsten:swap/mainhand
execute if score .modified tungsten matches 1 run item modify entity @s weapon.mainhand tungsten:replace_tags
