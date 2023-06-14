execute store result score .index gen.crops.calc run data get storage gen:crops crop_data.numerical_id 1
function gen:crops/api/get_crop_definition

execute store success score #different gen.crops.calc run data modify storage gen:crops crop_definition.id set from storage gen:crops crop_data.id
execute if score #different gen.crops.calc matches 1 run function gen:crops/internal/grow/get_changed_crop_definition