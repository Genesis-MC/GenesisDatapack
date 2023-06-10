#####################################################################
# crops/api/get_crop_id_registry_index.mcfunction
# written by Eroxen
#
# Gets the index (int) in the registry of a crop id (string)
# Returns -1 when not found
# Index is returned in score gen.crops.calc .index
# Storage input :
# - gen:crops :
#   - search_string : string to get the index of
#####################################################################

data modify storage gen:crops search_index set from storage gen:crops registry.ids
function gen:crops/internal/search_index/start