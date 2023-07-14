execute unless predicate gen:phead/wants_item_drops run return 0

execute if data storage gen:phead scan_head.item_used if data storage gen:phead context_internal.itemstack_used run function gen:phead/internal/cannot_place/player_item_used
execute if data storage gen:phead scan_head.item_used if data storage gen:phead context_internal.itemstack_used run return 0

data modify storage gen:core give_item set from storage gen:phead give_back_item
function gen:core/api/item/give