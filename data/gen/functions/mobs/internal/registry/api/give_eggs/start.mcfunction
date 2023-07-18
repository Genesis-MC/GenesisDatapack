data modify storage gen:temp UUID set from entity @s UUID
execute if data storage gen:mobs read[0] run function gen:mobs/internal/registry/api/give_eggs/loop
execute as @e[type=minecraft:item,distance=..2] run function gen:mobs/internal/registry/api/give_eggs/item_call