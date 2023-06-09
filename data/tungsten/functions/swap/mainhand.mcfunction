execute if score .new tungsten.uid.mainhand matches -1 run function tungsten:init/mainhand
scoreboard players set .has.swapped tungsten 1
execute if score @s tungsten.uid.mainhand matches 0 if score .new tungsten.uid.mainhand matches 0 run scoreboard players set .has.swapped tungsten 0
scoreboard players operation @s tungsten.uid.mainhand = .new tungsten.uid.mainhand
execute if score .has.swapped tungsten matches 1 run data remove storage tungsten:player Item
execute if score .has.swapped tungsten matches 1 run data modify storage tungsten:player Item set from entity @s SelectedItem
scoreboard players set .modified tungsten 0
execute if score .has.swapped tungsten matches 1 run function #tungsten:swap/mainhand
execute unless score .modified tungsten matches 0 run data remove block 420692 0 694202 Items
execute unless score .modified tungsten matches 0 run data modify block 420692 0 694202 Items append from storage tungsten:player Item
execute unless score .modified tungsten matches 0 run item replace entity @s weapon.mainhand from block 420692 0 694202 container.0
