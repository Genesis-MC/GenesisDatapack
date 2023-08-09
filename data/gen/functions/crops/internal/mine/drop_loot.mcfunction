execute if entity @p[distance=..8,scores={gen.crops.mined_sunflower=1..},predicate=!gen:crops/wants_item_drops] run return 0

function gen:crops/internal/mine/drop_loot_macro with storage gen:crops crop_definition.harvest