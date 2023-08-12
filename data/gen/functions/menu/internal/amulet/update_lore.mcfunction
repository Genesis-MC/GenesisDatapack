function gen:menu/data/amulet/lore

data modify storage gen:temp temp set value []
data modify storage gen:temp temp append from entity @s Inventory[{tag:{gen:{amulet:1b}}}].Slot
execute if data storage gen:temp temp[0] run function gen:menu/internal/amulet/slot/loop