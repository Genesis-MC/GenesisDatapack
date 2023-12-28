#####################################################################
# crops/api/get_final_model.mcfunction
# written by Eroxen
#
# Gets the crop's fully grown model.
#
# Storage input :
# - gen:crops :
#   - crop_definition : crop definition object
#
# Storage output :
# - gen:crops :
#   - model : ItemStack
#####################################################################

execute store result score #model gen.crops.calc run data get storage gen:crops crop_definition.growth.stages 1
scoreboard players remove #model gen.crops.calc 1
execute store result score #stages_per_model gen.crops.calc run data get storage gen:crops crop_definition.display.stages_per_model 1
scoreboard players operation #model gen.crops.calc /= #stages_per_model gen.crops.calc
function gen:crops/internal/get_model