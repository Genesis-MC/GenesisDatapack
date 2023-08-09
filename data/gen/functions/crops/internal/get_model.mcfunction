#####################################################################
# crops/internal/get_model.mcfunction
# written by Eroxen
#
# Gets model from crop definition
# Scoreboard input : 
# - gen.crops.calc :
#   - #model : model index
# Storage output :
# - gen:crops :
#   - model : ItemStack
#####################################################################
execute if data storage gen:crops crop_definition.display.models.custom_model_data_start run function gen:crops/internal/get_model/calculate_from_start
execute if data storage gen:crops crop_definition.display.models[0] store result storage gen:crops get_model.index int 1 run scoreboard players get #model gen.crops.calc
execute if data storage gen:crops crop_definition.display.models[0] run function gen:crops/internal/get_model/index with storage gen:crops get_model