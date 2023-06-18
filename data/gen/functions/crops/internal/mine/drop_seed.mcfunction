execute if entity @p[distance=..8,scores={gen.crops.mined_sunflower=1..},predicate=!gen:crops/wants_item_drops] run return 0

data modify storage gen:crops seed_item set from storage gen:crops crop_definition.seed_item
execute if entity @s[tag=gen.profession.mycology.crop_entity] run function gen:professions/mycology/internal/crop/drop_seed
loot spawn ~ ~ ~ loot gen:crops/player_head_copy_seed_nbt