execute if score .new tungsten.uid.chest matches -1 run function tungsten:init/chest
scoreboard players set .has.swapped tungsten 1
execute if score @s tungsten.uid.chest matches 0 if score .prev tungsten.uid.chest matches 0 run scoreboard players set .has.swapped tungsten 0
scoreboard players operation @s tungsten.uid.chest = .new tungsten.uid.chest
execute if score .has.swapped tungsten matches 1 run data remove storage tungsten:player Item
execute if score .has.swapped tungsten matches 1 run data modify storage tungsten:player Item set from storage tungsten:player Inventory[{Slot: 102b}]
execute if score .has.swapped tungsten matches 1 run data remove storage tungsten:player Item.Slot
scoreboard players set .modified tungsten 0
execute if score .has.swapped tungsten matches 1 run function #tungsten:swap/chest
execute unless score .modified tungsten matches 0 run data remove block 420692 0 694202 Items
execute unless score .modified tungsten matches 0 run data modify block 420692 0 694202 Items append from storage tungsten:player Item
execute unless score .modified tungsten matches 0 run item replace entity @s armor.chest from block 420692 0 694202 container.0
