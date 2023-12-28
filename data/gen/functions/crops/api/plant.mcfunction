#####################################################################
# crops/api/plant.mcfunction
# written by Eroxen
#
# Force-plants a crop. All planting conditions are ignored.
# Removes previous crop if it was in the way.
#
# Storage input :
# - gen:crops :
#   - crop_id: crop id
#####################################################################

data modify storage gen:crops get_crop_definition.id set from storage gen:crops crop_id
function gen:crops/api/get_crop_definition with storage gen:crops get_crop_definition
execute align xyz positioned ~0.5 ~0.5 ~0.5 run kill @e[type=item_display,tag=gen.crops.crop_entity,distance=..0.1]
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function gen:crops/internal/place/place_crop