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

data modify storage gen:crops to_register append value {id:"genesis:foo",growth:{time:{min:20,max:40},stages:100000000},display:{stages_per_model:100000000,models:[{Count:1b,id:"minecraft:diamond"}]},seed_item:{Count:1b,id:"minecraft:player_head",tag:{SkullOwner:{Name:"genesis.block.crop.seed.genesis:foo"},genesis:{phead:{detect:1b}},CustomModelData:1,display:{Name:'{"text":"Foo Seed"}'}}}}

data modify storage gen:crops to_register append value {id:"genesis:bar",growth:{time:{min:200,max:300},stages:6},display:{stages_per_model:1,models:[{Count:1b,id:"minecraft:lime_candle"},{Count:1b,id:"minecraft:green_candle"},{Count:1b,id:"minecraft:cyan_candle"},{Count:1b,id:"minecraft:light_blue_candle"},{Count:1b,id:"minecraft:blue_candle"},{Count:1b,id:"minecraft:purple_candle"}]},seed_item:{Count:1b,id:"minecraft:player_head",tag:{SkullOwner:{Name:"genesis.block.crop.seed.genesis:bar"},genesis:{phead:{detect:1b}},CustomModelData:2,display:{Name:'{"text":"Bar Seed"}'}}}}