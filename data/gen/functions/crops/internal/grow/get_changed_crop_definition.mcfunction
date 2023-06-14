data modify storage gen:crops search_string set from storage gen:crops crop_data.id
function gen:crops/api/get_crop_id_registry_index
execute store result storage gen:crops crop_data.numerical_id int 1 run scoreboard players get .index gen.crops.calc
function gen:crops/api/get_crop_definition

tellraw @a[tag=gen.dev.debug] ["",{"text":"gen/crops -> ","color":"#CBBECB"},{"text":"Growing crop ","color":"red"},{"storage":"gen:crops","nbt":"crop_definition.id","color":"gold"},{"text":" re-searched registry id (registry changed)","color":"red"}]