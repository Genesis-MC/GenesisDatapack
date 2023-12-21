advancement revoke @s only gen:food/eat

data remove storage gen:temp eaten_item
execute if data entity @s SelectedItem.tag.gen.on_eat run data modify storage gen:temp eaten_item set from entity @s SelectedItem
execute unless data entity @s SelectedItem.tag.gen.on_eat run data modify storage gen:temp eaten_item set from entity @s Inventory[{Slot:-106b}]
tellraw @s[tag=gen.dev.debug] {"text":"Eaten: ","extra":[{"storage":"gen:temp","nbt":"eaten_item"}]}
execute unless data storage gen:temp eaten_item run return 0

execute if data storage gen:temp eaten_item.tag.gen.on_eat.saturation run function gen:food/internal/eat/saturation