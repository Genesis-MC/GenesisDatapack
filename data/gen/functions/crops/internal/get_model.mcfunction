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
execute if data storage gen:crops crop_definition.display.models[0] run function gen:crops/internal/get_model_tree/0_63