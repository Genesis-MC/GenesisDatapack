data modify storage gen:phead scan_head set value {}
data modify storage gen:phead scan_head.name set from block ~ ~ ~ SkullOwner.Name
data modify storage gen:phead scan_head.namespace set string storage gen:phead scan_head.name 0 8
execute unless data storage gen:phead scan_head{namespace:"genesis."} run return 0

# associate head with used item if names match
execute if data storage gen:phead context_internal.itemstack_used{associated:0b} run function gen:phead/internal/associate_used_item

execute if data storage gen:phead scan_head{namespace:"genesis."} run function gen:phead/data/scan_head




# itemstack_used is the literal item stack from player's inventory: contains slot, can have Count over 1
# item always has a count of 1 and can only be associated with 1 placed head
execute if data storage gen:phead place_context.itemstack_used run data modify storage gen:phead place_context.item set value {Count:1b,id:"minecraft:player_head"}
execute if data storage gen:phead place_context.itemstack_used.tag run data modify storage gen:phead place_context.item.tag set from storage gen:phead place_context.itemstack_used.tag