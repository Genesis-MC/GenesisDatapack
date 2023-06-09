execute if score .new tungsten.uid.legs matches -1 run function tungsten:init/legs
scoreboard players set .has.swapped tungsten 1
execute if score @s tungsten.uid.legs matches 0 if score .prev tungsten.uid.legs matches 0 run scoreboard players set .has.swapped tungsten 0
scoreboard players operation @s tungsten.uid.legs = .new tungsten.uid.legs
execute if score .has.swapped tungsten matches 1 run data remove storage tungsten:player Item
execute if score .has.swapped tungsten matches 1 run data modify storage tungsten:player Item set from storage tungsten:player Inventory[{Slot: 101b}]
execute if score .has.swapped tungsten matches 1 run data remove storage tungsten:player Item.Slot
scoreboard players set .modified tungsten 0
execute if score .has.swapped tungsten matches 1 run function #tungsten:swap/legs
execute unless score .modified tungsten matches 0 run data remove block 420692 0 694202 Items
execute unless score .modified tungsten matches 0 run data modify block 420692 0 694202 Items append from storage tungsten:player Item
execute unless score .modified tungsten matches 0 run item replace entity @s armor.legs from block 420692 0 694202 container.0
