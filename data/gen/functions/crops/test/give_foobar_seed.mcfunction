data modify storage gen:core give_item set from storage gen:crops registry.crop_definitions[{id:"genesis:foo"}].seed_item
function gen:core/api/item/give
data modify storage gen:core give_item set from storage gen:crops registry.crop_definitions[{id:"genesis:bar"}].seed_item
function gen:core/api/item/give

give @s minecraft:player_head{SkullOwner:{Name:"genesis.block.crop.seed.genesis:baz"},genesis:{phead:{detect:1b}}}