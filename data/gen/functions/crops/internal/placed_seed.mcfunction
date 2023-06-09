#####################################################################
# crops/internal/placed_seed.mcfunction
# written by Eroxen
#
# Gets called on any newly placed seed (Player Head)
# Storage context :
# - gen:crops :
#   - placed_seed :
#     - name : the seed name
#####################################################################

execute unless predicate gen:crops/valid_location_for_seed run function gen:crops/internal/seed_placed_in_invalid_location
execute unless predicate gen:crops/valid_location_for_seed run return 0