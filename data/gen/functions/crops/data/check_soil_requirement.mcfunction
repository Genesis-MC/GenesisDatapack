#####################################################################
# crops/data/check_soil_requirement.mcfunction
# written by Eroxen
#
# Checks soil requirement
# Returns 1 when at least one requirement passes
# Returns 0 when all requirements fail
# Storage context:
# - gen:crops :
#   - List -> <string> <- requirements : list of soil requirements to test for
#####################################################################

execute if data storage gen:crops {requirements:["minecraft:farmland"]} if block ~ ~-1 ~ minecraft:farmland run return 1
execute if data storage gen:crops {requirements:["genesis:mushroom_soil"]} if predicate gen:crops/mushroom_soil run return 1

return 0