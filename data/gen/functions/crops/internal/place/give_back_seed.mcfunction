data modify storage gen:crops seed_item set from storage gen:crops crop_definition.seed_item
execute if predicate gen:crops/wants_item_drops run loot spawn ~ ~ ~ loot gen:crops/player_head_copy_seed_nbt