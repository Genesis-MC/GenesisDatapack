advancement revoke @s only gen:phead/place_player_head

data modify storage gen:phead context_internal set value {}
execute if predicate gen:phead/head_in_mainhand run data modify storage gen:phead context_internal.itemstack_used set from entity @s SelectedItem
execute if predicate gen:phead/head_in_offhand run data modify storage gen:phead context_internal.itemstack_used set from entity @s Inventory[{Slot:-106b}]
execute unless data storage gen:phead context_internal.itemstack_used.tag.SkullOwner.Name run data remove storage gen:phead context_internal.itemstack_used
execute if data storage gen:phead context_internal.itemstack_used run data modify storage gen:phead context_internal.itemstack_used.associated set value 0b

execute at @s rotated as @s anchored eyes positioned ^ ^ ^3 align xyz positioned ~0.5 ~0.5 ~0.5 run function gen:phead/internal/scan_cube