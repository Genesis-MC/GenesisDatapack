data modify storage gen:crops registry_item set from storage gen:crops read_to_register[0]
data remove storage gen:crops read_to_register[0]
function gen:crops/internal/register/build_item
data modify storage gen:crops registry.crop_definitions append from storage gen:crops registry_item

execute if data storage gen:crops read_to_register[0] run function gen:crops/internal/register/loop