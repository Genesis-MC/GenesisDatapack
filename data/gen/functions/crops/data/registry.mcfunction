#####################################################################
# crops/data/registry.mcfunction
# written by Eroxen
#
# Registers crop definitions
# Appends to an array of register instruction objects in storage gen:crops to_register
# Object fields:
# - string id : crop id
# - ItemStack seed_item : seed item
#   - (@Nullable) obj preprocessing:
#     - bool show_growth_time: adds a line with min and max growth time to the lore
#     - bool apply_default_skin: applies a skin with leaves to the SkullOwner
# - obj growth :
#   - string run_command : command to be run on every growth tick
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

data modify storage gen:crops to_register append value {id:"genesis:foo",growth:{time:{min:200,max:300},stages:8},display:{stages_per_model:1,models:{id:"minecraft:sunflower",custom_model_data_start:1}},seed_item:{preprocessing:{show_growth_time:1b,apply_default_skin:1b},Count:1b,id:"minecraft:player_head",tag:{SkullOwner:{Name:"genesis.block.crop.seed.genesis:foo"},genesis:{debug_item:1b,phead:{detect:1b}},CustomModelData:982001,display:{Name:'{"translate":"item.gen.crops.seed.foo","italic":false}'}}},harvest:{loot_table:"gen:crops/harvest/foo",xp:10},bone_meal:{stages:{min:1,max:3}}}

data modify storage gen:crops to_register append value {id:"genesis:bar",growth:{time:{min:400,max:600},stages:4},display:{stages_per_model:1,models:{id:"minecraft:sunflower",custom_model_data_start:9}},seed_item:{preprocessing:{show_growth_time:1b,apply_default_skin:1b},Count:1b,id:"minecraft:player_head",tag:{SkullOwner:{Name:"genesis.block.crop.seed.genesis:bar"},genesis:{debug_item:1b,phead:{detect:1b}},CustomModelData:982002,display:{Name:'{"translate":"item.gen.crops.seed.bar","italic":false}'}}},harvest:{loot_table:"gen:crops/harvest/bar",xp:100},bone_meal:{stages:{min:0,max:1}},requirements:{soil:["genesis:mushroom_soil"]}}

data modify storage gen:crops to_register append value {id:"genesis:heartbeet",growth:{time:{min:13500,max:18000},stages:5},display:{stages_per_model:1,models:{id:"minecraft:sunflower",custom_model_data_start:13}},seed_item:{preprocessing:{show_growth_time:1b,apply_default_skin:1b},Count:1b,id:"minecraft:player_head",tag:{SkullOwner:{Name:"genesis.block.crop.seed.genesis:heartbeet"},gen:{name:"heartbeet_seed"},genesis:{phead:{detect:1b}},CustomModelData:982003,display:{Name:'{"translate":"item.gen.crops.seed.heartbeet","italic":false}',Lore:['[{"translate":"genesis.lore.rarity.1","color":"aqua","italic":false,"with":[{"text":"A","font":"genesis:icon","color":"white"},{"translate":"genesis.lore.type.ingredient"}]}]']}}},harvest:{loot_table:"gen:crops/harvest/heartbeet",xp:5},bone_meal:{stages:{min:0,max:1}},requirements:{soil:["minecraft:farmland"]}}

data modify storage gen:crops to_register append value {id:"genesis:mycology/dark_shroom",growth:{time:{min:100,max:300},stages:5},display:{stages_per_model:1,models:{id:"minecraft:amethyst_cluster",custom_model_data_start:13}},seed_item:{preprocessing:{show_growth_time:1b,apply_default_skin:1b},Count:1b,id:"minecraft:player_head",tag:{SkullOwner:{Name:"genesis.block.crop.seed.genesis:mycology/dark_shroom"},genesis:{phead:{detect:1b}},gen:{mycology:{sunlight:-50,hazard:-15,growth_speed:0,growth_size:0,temperature:-40,moisture:17,mutability:2}},CustomModelData:982003,display:{Name:'{"text":"Dark Shroom","italic":false,"color":"#331199"}'}}},harvest:{loot_table:"minecraft:blocks/brown_mushroom",xp:1},bone_meal:{stages:{min:0,max:1}}}
data modify storage gen:crops to_register append value {id:"genesis:mycology/light_shroom",growth:{time:{min:100,max:300},stages:5},display:{stages_per_model:1,models:{id:"minecraft:decorated_pot",custom_model_data_start:13}},seed_item:{preprocessing:{show_growth_time:1b,apply_default_skin:1b},Count:1b,id:"minecraft:player_head",tag:{SkullOwner:{Name:"genesis.block.crop.seed.genesis:mycology/light_shroom"},genesis:{phead:{detect:1b}},gen:{mycology:{sunlight:50,hazard:6,growth_speed:0,growth_size:0,temperature:31,moisture:-32,mutability:2}},CustomModelData:982003,display:{Name:'{"text":"Light Shroom","italic":false,"color":"#55FFCC"}'}}},harvest:{loot_table:"minecraft:blocks/red_mushroom",xp:1},bone_meal:{stages:{min:0,max:1}}}

data modify storage gen:crops to_register append value {id:"genesis:corn",growth:{time:{min:5143,max:6858},stages:8},display:{stages_per_model:1,models:{id:"minecraft:sunflower",custom_model_data_start:18}},seed_item:{preprocessing:{show_growth_time:1b,apply_default_skin:1b},Count:1b,id:"minecraft:player_head",tag:{SkullOwner:{Name:"genesis.block.crop.seed.genesis:corn"},gen:{name:"corn_seed"},genesis:{phead:{detect:1b}},CustomModelData:982004,display:{Name:'{"translate":"item.gen.crops.seed.corn","italic":false}',Lore:['[{"translate":"genesis.lore.rarity.0","color":"white","italic":false,"with":[{"text":"A","font":"genesis:icon","color":"white"},{"translate":"genesis.lore.type.ingredient"}]}]']}}},harvest:{loot_table:"gen:crops/harvest/corn",xp:5},bone_meal:{stages:{min:2,max:4}},requirements:{soil:["minecraft:farmland"]}}

data modify storage gen:crops to_register append value {id:"genesis:mana_bean",growth:{time:{min:30000,max:36000},stages:4},display:{stages_per_model:1,models:{id:"minecraft:sunflower",custom_model_data_start:26}},seed_item:{preprocessing:{show_growth_time:1b,apply_default_skin:1b},Count:1b,id:"minecraft:player_head",tag:{SkullOwner:{Name:"genesis.block.crop.seed.genesis:mana_bean"},gen:{name:"mana_bean_seed"},genesis:{phead:{detect:1b}},CustomModelData:982005,display:{Name:'{"translate":"item.gen.crops.seed.mana_bean","italic":false}',Lore:['[{"translate":"genesis.lore.rarity.2","color":"yellow","italic":false,"with":[{"text":"A","font":"genesis:icon","color":"white"},{"translate":"genesis.lore.type.ingredient"}]}]']}}},harvest:{loot_table:"gen:crops/harvest/mana_bean",xp:5},bone_meal:{stages:{min:0,max:1}},requirements:{soil:["minecraft:farmland"]}}

data modify storage gen:crops to_register append value {id:"genesis:tomato",growth:{time:{min:5143,max:6858},stages:8},display:{stages_per_model:1,models:{id:"minecraft:sunflower",custom_model_data_start:30}},seed_item:{preprocessing:{show_growth_time:1b,apply_default_skin:1b},Count:1b,id:"minecraft:player_head",tag:{SkullOwner:{Name:"genesis.block.crop.seed.genesis:tomato"},gen:{name:"tomato_seed"},genesis:{phead:{detect:1b}},CustomModelData:982006,display:{Name:'{"translate":"item.gen.crops.seed.tomato","italic":false}',Lore:['[{"translate":"genesis.lore.rarity.0","color":"white","italic":false,"with":[{"text":"A","font":"genesis:icon","color":"white"},{"translate":"genesis.lore.type.ingredient"}]}]']}}},harvest:{loot_table:"gen:crops/harvest/tomato",xp:5},bone_meal:{stages:{min:2,max:4}},requirements:{soil:["minecraft:farmland"]}}

data modify storage gen:crops to_register append value {id:"genesis:violentil",growth:{time:{min:12000,max:16000},stages:4},display:{stages_per_model:1,models:{id:"minecraft:sunflower",custom_model_data_start:38}},seed_item:{preprocessing:{show_growth_time:1b,apply_default_skin:1b},Count:1b,id:"minecraft:player_head",tag:{SkullOwner:{Name:"genesis.block.crop.seed.genesis:violentil"},gen:{name:"violentil_seed"},genesis:{phead:{detect:1b}},CustomModelData:982007,display:{Name:'{"translate":"item.gen.crops.seed.violentil","italic":false}',Lore:['[{"translate":"genesis.lore.rarity.0","color":"white","italic":false,"with":[{"text":"A","font":"genesis:icon","color":"white"},{"translate":"genesis.lore.type.ingredient"}]}]']}}},harvest:{loot_table:"gen:crops/harvest/violentil",xp:5},bone_meal:{stages:{min:1,max:1}},requirements:{soil:["minecraft:farmland"]}}

data modify storage gen:crops to_register append value {id:"genesis:desert_cattleya",growth:{run_command:"function gen:crops/data/special_crops/desert_cattleya_grow",time:{min:1200,max:1440},stages:1801},display:{stages_per_model:450,models:{id:"minecraft:sunflower",custom_model_data_start:42}},seed_item:{preprocessing:{show_growth_time:1b,apply_default_skin:1b},Count:1b,id:"minecraft:player_head",tag:{SkullOwner:{Name:"genesis.block.crop.seed.genesis:desert_cattleya"},gen:{name:"desert_cattleya_seed"},genesis:{phead:{detect:1b}},CustomModelData:982008,display:{Name:'{"translate":"item.gen.crops.seed.desert_cattleya","italic":false}',Lore:['[{"translate":"genesis.lore.rarity.3","color":"light_purple","italic":false,"with":[{"text":"A","font":"genesis:icon","color":"white"},{"translate":"genesis.lore.type.ingredient"}]}],{"italic":false,"color":"gray","translate":"item.gen.crops.seed.desert_cattleya.lore.0"}']}}},harvest:{loot_table:"gen:crops/harvest/desert_cattleya",xp:500},bone_meal:{stages:{min:10,max:20}},requirements:{soil:["minecraft:farmland"]}}

