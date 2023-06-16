particle angry_villager
execute unless data storage gen:crops crop_definition.seed_item run setblock ~ ~ ~ air destroy
execute if data storage gen:crops crop_definition.seed_item run setblock ~ ~ ~ air
execute if data storage gen:crops crop_definition.seed_item run function gen:crops/internal/place/give_back_seed