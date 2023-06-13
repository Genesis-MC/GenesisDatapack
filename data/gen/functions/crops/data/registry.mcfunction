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
#   - array<ItemStack> models : Items to use as display models
# - obj harvest:
#   - LootTable loot_table : loot to drop when harvesting (does not include seed)
# - obj bone_meal:
#   - obj stages :
#     - int min: minimum amount of growth stages to advance when bonemealed
#     - int max: maximum amount of growth stages to advance when bonemealed
#####################################################################

data modify storage gen:crops to_register append value {id:"genesis:foo",growth:{time:{min:200,max:300},stages:8},display:{stages_per_model:1,models:[{Count:1b,id:"minecraft:sunflower",tag:{CustomModelData:1}},{Count:1b,id:"minecraft:sunflower",tag:{CustomModelData:2}},{Count:1b,id:"minecraft:sunflower",tag:{CustomModelData:3}},{Count:1b,id:"minecraft:sunflower",tag:{CustomModelData:4}},{Count:1b,id:"minecraft:sunflower",tag:{CustomModelData:5}},{Count:1b,id:"minecraft:sunflower",tag:{CustomModelData:6}},{Count:1b,id:"minecraft:sunflower",tag:{CustomModelData:7}},{Count:1b,id:"minecraft:sunflower",tag:{CustomModelData:8}}]},seed_item:{Count:1b,id:"minecraft:player_head",tag:{SkullOwner:{Name:"genesis.block.crop.seed.genesis:foo"},genesis:{phead:{detect:1b}},CustomModelData:1,display:{Name:'{"text":"Foo Seed"}'}}},harvest:{loot_table:"gen:crops/harvest/foo"},bone_meal:{stages:{min:1,max:2}}}

data modify storage gen:crops to_register append value {id:"genesis:bar",growth:{time:{min:400,max:600},stages:4},display:{stages_per_model:1,models:[{Count:1b,id:"minecraft:sunflower",tag:{CustomModelData:9}},{Count:1b,id:"minecraft:sunflower",tag:{CustomModelData:10}},{Count:1b,id:"minecraft:sunflower",tag:{CustomModelData:11}},{Count:1b,id:"minecraft:sunflower",tag:{CustomModelData:12}}]},seed_item:{Count:1b,id:"minecraft:player_head",tag:{SkullOwner:{Name:"genesis.block.crop.seed.genesis:bar"},genesis:{phead:{detect:1b}},CustomModelData:2,display:{Name:'{"text":"Bar Seed"}'}}},harvest:{loot_table:"gen:crops/harvest/bar"},bone_meal:{stages:{min:0,max:1}}}