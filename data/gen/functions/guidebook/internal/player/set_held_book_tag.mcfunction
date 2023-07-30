scoreboard players set #slot gen.temp -1
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:written_book"}].tag.genesis.guidebook run scoreboard players set #slot gen.temp 1
execute if data entity @s SelectedItem{id:"minecraft:written_book",tag:{genesis:{guidebook:{}}}} run scoreboard players set #slot gen.temp 0

execute if score #slot gen.temp matches 0 run item modify entity @s weapon.mainhand gen:guidebook/merge_nbt
execute if score #slot gen.temp matches 1 run item modify entity @s weapon.offhand gen:guidebook/merge_nbt