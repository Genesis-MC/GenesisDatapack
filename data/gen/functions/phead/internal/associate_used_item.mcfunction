data modify storage gen:phead scan_head.compare set from storage gen:phead scan_head.name
execute store success score #different gen.temp run data modify storage gen:phead context_internal.itemstack_used.tag.SkullOwner.Name

execute if score #different gen.temp matches 1 run return 0

# mark the used itemstack as associated, so the same data cannot be applied twice
# if multiple heads with the same name are somehow present
data modify storage gen:phead context_internal.itemstack_used.associated set value 1b

data modify storage gen:phead scan_head.item_used set value {Count:1b,id:"minecraft:player_head"}
data modify storage gen:phead scan_head.item_used.tag set from storage gen:phead context_internal.itemstack_used.tag