#####################################################################
# crops/data/registry.mcfunction
# written by Eroxen
#
# Registers crop definitions
# Appends to an array of register instruction objects in storage gen:crops to_register
# Object fields:
# - string id : crop id
# - ItemStack seed_item : seed item
# - obj growth :
#   - obj time :
#     - int min : minimum time to grow 1 stage
#     - int max : maximum time to grow 1 stage
#   - int stages : total growth stages
# - obj display:
#   - int stages_per_model : number of stages grown after which the next model is used
#   - models : can be either: - array<Itemstack> : array of items
#                             - obj :
#                               - string id : item id to use for all growth stages
#                               - int custom_model_data_start : CustomModelData of first growth stage; increments 1 for every stage
# - obj harvest:
#   - LootTable loot_table : loot to drop when harvesting (does not include seed)
#   - int xp : xp gained when harvesting the crop
# - obj bone_meal:
#   - obj stages :
#     - int min: minimum amount of growth stages to advance when bonemealed
#     - int max: maximum amount of growth stages to advance when bonemealed
# - obj requirements:
#   - List<string> soil : list of conditions where at least one must pass, checked in /data/check_soil_requirement.mcfunction
#####################################################################

data modify storage gen:crops to_register append value {id:"genesis:foo",growth:{time:{min:200,max:300},stages:8},display:{stages_per_model:1,models:{id:"minecraft:sunflower",custom_model_data_start:1}},seed_item:{Count:1b,id:"minecraft:player_head",tag:{SkullOwner:{Name:"genesis.block.crop.seed.genesis:foo"},genesis:{debug_item:1b,phead:{detect:1b}},CustomModelData:1,display:{Name:'{"text":"Foo Seed","italic":false}'}}},harvest:{loot_table:"gen:crops/harvest/foo",xp:10},bone_meal:{stages:{min:1,max:3}}}

data modify storage gen:crops to_register append value {id:"genesis:bar",growth:{time:{min:400,max:600},stages:4},display:{stages_per_model:1,models:{id:"minecraft:sunflower",custom_model_data_start:9}},seed_item:{Count:1b,id:"minecraft:player_head",tag:{SkullOwner:{Name:"genesis.block.crop.seed.genesis:bar"},genesis:{debug_item:1b,phead:{detect:1b}},CustomModelData:2,display:{Name:'{"text":"Bar Seed","italic":false}'}}},harvest:{loot_table:"gen:crops/harvest/bar",xp:100},bone_meal:{stages:{min:0,max:1}},requirements:{soil:["genesis:mushroom_soil"]}}

data modify storage gen:crops to_register append value {id:"genesis:heartbeet",growth:{time:{min:13500,max:18000},stages:5},display:{stages_per_model:1,models:{id:"minecraft:sunflower",custom_model_data_start:13}},seed_item:{Count:1b,id:"minecraft:player_head",tag:{SkullOwner:{Name:"genesis.block.crop.seed.genesis:heartbeet"},genesis:{phead:{detect:1b}},CustomModelData:3,display:{Name:'{"text":"Heartbeet Seed","italic":false}'}}},harvest:{loot_table:"gen:crops/harvest/heartbeet",xp:5},bone_meal:{stages:{min:0,max:1}},requirements:{soil:["minecraft:farmland"]}}

data modify storage gen:crops to_register append value {id:"genesis:mycology/dark_shroom",growth:{time:{min:100,max:300},stages:5},display:{stages_per_model:1,models:{id:"minecraft:amethyst_cluster",custom_model_data_start:13}},seed_item:{Count:1b,id:"minecraft:player_head",tag:{SkullOwner:{Name:"genesis.block.crop.seed.genesis:mycology/dark_shroom"},genesis:{phead:{detect:1b}},gen:{mycology:{sunlight:-50,hazard:-15,growth_speed:0,growth_size:0,temperature:-40,moisture:17,mutability:2}},CustomModelData:3,display:{Name:'{"text":"Dark Shroom","italic":false,"color":"#331199"}'}}},harvest:{loot_table:"minecraft:blocks/brown_mushroom",xp:1},bone_meal:{stages:{min:0,max:1}}}
data modify storage gen:crops to_register append value {id:"genesis:mycology/light_shroom",growth:{time:{min:100,max:300},stages:5},display:{stages_per_model:1,models:{id:"minecraft:decorated_pot",custom_model_data_start:13}},seed_item:{Count:1b,id:"minecraft:player_head",tag:{SkullOwner:{Name:"genesis.block.crop.seed.genesis:mycology/light_shroom"},genesis:{phead:{detect:1b}},gen:{mycology:{sunlight:50,hazard:6,growth_speed:0,growth_size:0,temperature:31,moisture:-32,mutability:2}},CustomModelData:3,display:{Name:'{"text":"Light Shroom","italic":false,"color":"#55FFCC"}'}}},harvest:{loot_table:"minecraft:blocks/red_mushroom",xp:1},bone_meal:{stages:{min:0,max:1}}}

