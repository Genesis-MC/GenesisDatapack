#####################################################################
# crops/data/registry.mcfunction
# written by Eroxen
#
# Registers crop definitions
# Appends to an array of register instruction objects in storage gen:crops to_register
# Object fields:
# - string id : crop id
# - string seed_id : seed id
# - obj growth :
#   - obj time :
#     - int min : minimum time to grow 1 stage
#     - int max : maximum time to grow 1 stage
#   - int stages : total growth stages
# - obj display:
#   - int stages_per_model : number of stages grown after which the next model is used
#   - array<Item> models : Items to use as display models
#####################################################################

data modify storage gen:crops to_register append value {id:"genesis:foo",growth:{time:{min:20,max:40},stages:100000000},display:{stages_per_model:100000000,models:[{Count:1b,id:"minecraft:diamond"}]}}

data modify storage gen:crops to_register append value {id:"genesis:bar",growth:{time:{min:100,max:120},stages:5},display:{stages_per_model:1,models:[{Count:1b,id:"minecraft:oak_pressure_plate"},{Count:1b,id:"minecraft:oak_slab"},{Count:1b,id:"minecraft:oak_stairs"},{Count:1b,id:"minecraft:oak_planks"},{Count:1b,id:"minecraft:oak_log"}]}}