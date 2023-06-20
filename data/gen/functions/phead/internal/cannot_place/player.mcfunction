execute unless predicate gen:phead/wants_item_drops run return 0

data modify storage gen:core give_item set from storage gen:phead give_back_item
function gen:core/api/item/give