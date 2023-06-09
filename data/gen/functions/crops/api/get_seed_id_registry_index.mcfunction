#####################################################################
# crops/api/get_seed_id_registry_index.mcfunction
# written by Eroxen
#
# Gets the index (int) in the registry of a seed id (string)
# Returns -1 when not found
# Index is returned in score gen.crops.calc index
# Storage input :
# - gen:crops :
#   - search_string : string to get the index of
#####################################################################

data modify storage gen:crops search_index set value []
data modify storage gen:crops search_index append from storage gen:crops registry.crop_definitions[].seed_id
function gen:crops/internal/search_index/start