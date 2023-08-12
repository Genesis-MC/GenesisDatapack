#####################################################################
# crops/api/get_crop_definition.mcfunction
# written by Eroxen
#
# Gets the crop definition at a specified key in the registry
#
# Macro parameters :
# - id : crop id
#
# Storage output :
# - gen:crops :
#   - crop_definition : crop definition object
#####################################################################

data remove storage gen:crops crop_definition
$data modify storage gen:crops crop_definition set from storage gen:crops registry[{id:"$(id)"}]
$execute unless data storage gen:crops crop_definition run tellraw @a[tag=gen.dev.debug] ["",{"text":"gen/crops -> ","color":"#CBBECB"},{"text":"Invalid id $(id)","color":"red"}]