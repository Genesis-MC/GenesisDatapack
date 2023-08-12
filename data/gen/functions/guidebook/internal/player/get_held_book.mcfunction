scoreboard players set #slot gen.temp -1
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:written_book"}].tag.genesis.guidebook run scoreboard players set #slot gen.temp 1
execute if data entity @s SelectedItem{id:"minecraft:written_book",tag:{genesis:{guidebook:{}}}} run scoreboard players set #slot gen.temp 0

execute if score #slot gen.temp matches 0 run data modify storage gen:guidebook held_book set from entity @s SelectedItem
execute if score #slot gen.temp matches 1 run data modify storage gen:guidebook held_book set from entity @s Inventory[{Slot:-106b}]
execute unless score #slot gen.temp matches 0..1 run data remove storage gen:guidebook held_book