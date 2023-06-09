#####################################################################
# crops/api/get_crop_definition.mcfunction
# written by Eroxen
#
# Gets the crop definition at a specified index in the registry
# Scoreboard input :
# - gen.crops.calc :
#   - index : numerical index of the crop in the registry
# Storage output :
# - gen:crops :
#   - crop_definition : crop definition object
#####################################################################

data remove storage gen:calc crop_definition
function gen:crops/internal/get_crop_definition_tree/0_63