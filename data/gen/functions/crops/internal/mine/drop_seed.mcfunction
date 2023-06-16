execute if entity @p[distance=..8,scores={gen.crops.mined_sunflower=1..},predicate=!gen:crops/wants_item_drops] run return 0

data modify storage gen:core seed_item set from storage gen:crops crop_definition.seed_item
loot spawn ~ ~ ~ loot gen:crops/player_head_copy_seed_nbt