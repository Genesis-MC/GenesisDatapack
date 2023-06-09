data modify storage gen:crops previous_instructions set from storage gen:crops to_register
data modify storage gen:crops to_register set value []
function gen:crops/data/registry
# do not re-register if new instructions are the same as already registered instructions
execute store success score different gen.crops.calc run data modify storage gen:crops previous_instructions set from storage gen:crops to_register
data remove storage gen:crops previous_instructions
execute if score different gen.crops.calc matches 0 run return 0

data modify storage gen:crops registry set value {}
data modify storage gen:crops registry.crop_definitions set from storage gen:crops to_register
data modify storage gen:crops registry.ids set value []
data modify storage gen:crops registry.ids append from storage gen:crops to_register[].id