function gen:gear/data/bth/cmd/loop
data modify storage gen:gear Inventory set value []
data modify storage gen:gear Inventory append from entity @s Inventory[{tag:{HelmetData:{}}}]
data remove storage gen:gear Inventory[{tag:{HelmetData:{CMD:1b}}}]
function gen:gear/data/bth/cmd/loop