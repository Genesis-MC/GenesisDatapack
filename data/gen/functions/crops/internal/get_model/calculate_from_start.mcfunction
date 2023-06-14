data modify storage gen:crops model set value {Count:1b}
data modify storage gen:crops model.id set from storage gen:crops crop_definition.display.models.id
execute store result score #custom_model_data gen.crops.calc run data get storage gen:crops crop_definition.display.models.custom_model_data_start 1
scoreboard players operation #custom_model_data gen.crops.calc += #model gen.crops.calc
execute store result storage gen:crops model.tag.CustomModelData int 1 run scoreboard players get #custom_model_data gen.crops.calc