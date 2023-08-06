advancement revoke @s only gen:gear/bth/unworn
data modify storage gen:gear Inventory set value []
data modify storage gen:gear Inventory append from entity @s Inventory[{tag:{HelmetData:{isBlockHelmet:1b}}}]
data remove storage gen:gear Inventory[{Slot:103b}] 
execute unless data storage gen:gear Inventory[0] run return 0
scoreboard players set @s gen.bth.wearing_block_helmet 0
execute if data storage gen:gear Inventory[0] run function gen:gear/internal/bth/block_to_helmet/loop