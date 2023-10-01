# registry 
#    registry.zombie will list all the possible values the zombie can be
#    base_entity is what the mob is like if 20% of zombies became piglins you have to set it to minecraft:piglin other wise defaults to #the key it is assigned to
#    name is what used to search for the json key
#    spawn_pack (NOT YET IMPLEMENTED) is the amount of mobs it will spawn of that type
#    spawn_pack_distance (NOT YET IMPLEMENTED) is the amount of distance the pack mobs will be seperated deaults to 1 block
#    weight is self explantory
#    weight_multiplier will increase base wieght with the multipler * level 
#   requirements
# you can set (min:420) no need to set the max!
# you can set (max:69) no need to set the min!
#
#           moon_phase ( 1- 8 ) NOTE:::(for optimiztion reasons please include the correct range dont put min:5000,max:10000)
#                       min for the minum moon cycle number
#                       max is forthe maximum moon cylce number
#                       exact is the exact moon cycle
#           level
#                   min is the minum level the mob must be 
#                   max is the max level the mob must be
#           block : "minecraft:dirt" the block it must be summoned under (THE NAMESPACE IS REQUIRED YOU CANT JUST PUT 'dirt')
#           entity_data is the nbt
#tldr use the generator lol
data modify storage gen:mobs registry set value []

function gen:mobs/data/registries
########### ADD MOBS BETWEEN HERE
#data modify storage gen:mobs registry append value {weight:1000,use_spawning_conditions_of:"zombie","name":"}
## Mobs are sorted by level min requirement
#### Mountain Boar
data modify storage gen:mobs registry append value {use_spawning_conditions_of:"pig",name:"gen:mountain_boar",weight:600,weight_level_multiplier:{v:100},requirements:{biomes:["minecraft:stony_peaks","minecraft:snowy_slopes","minecraft:jagged_peaks","minecraft:meadow","minecraft:frozen_peaks"],biomes_search_key:1b},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{DeathLootTable:"gen:entities/mountain_boar",CustomName:'{"text":"Mountain Boar","color":"white","italic":false}',Attributes:[{Name:generic.max_health,Base:16},{Name:generic.movement_speed,Base:0.4}]}}
#### Mist Apparition*
data modify storage gen:mobs registry append value {use_spawning_conditions_of:"zombie",name:"gen:mist_apparition",weight:300,weight_level_multiplier:{v:100},base_entity:"skeleton",requirements:{weather:{raining:1b}},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{Tags:["gen.mist_apparition"],CustomName:'{"text":"Mist Apparition","color":"white","italic":false}',ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-908032147,-504739298,-1910596207,-1701774675],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTY5NzYzM2Y1YTlhNDhmNTZlY2Q1OWQwYjdmMmM3NzM3NDk1ZTc3ZjQ1MGY5MGMxNDUyNzliMTFkNjM5ZjU0NyJ9fX0="}]}}}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],Attributes:[{Name:generic.armor,Base:10}]}}
#### Verdant Zombie
data modify storage gen:mobs registry append value {use_spawning_conditions_of:"zombie",name:"gen:verdant_zombie",weight:100,weight_level_multiplier:{v:100},base_entity:"zombie",requirements:{biomes:["minecraft:forest","minecraft:flower_forest","minecraft:birch_forest","minecraft:old_growth_birch_forest","minecraft:dark_forest","minecraft:grove"],biomes_search_key:1b},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{DeathLootTable:"gen:entities/verdant_zombie",CustomName:'{"text":"Verdant Zombie","color":"white","italic":false}',ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:952064}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:952064}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:952064}}},{id:"minecraft:oak_leaves",Count:1b,tag:{display:{color:952064}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.attack_damage,Base:2}]}}
##### Sentient Elderwood*
data modify storage gen:mobs registry append value {use_spawning_conditions_of:"zombie",name:"gen:sentient_elderwood",weight:100,weight_level_multiplier:{v:100},base_entity:"drowned",requirements:{biomes:["minecraft:dark_forest"],biomes_search_key:1b},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},summon_function:"",entity_data:{CustomName:'{"text":"Sentient Elderwood","color":"white","italic":false}',ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:1983003}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:1983003}}},{id:"minecraft:chainmail_chestplate",Count:1b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:vex"}}},{id:"minecraft:dark_oak_wood",Count:1b,tag:{Enchantments:[{}]}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F]}}
##### Paradise Crawler
data modify storage gen:mobs registry append value {use_spawning_conditions_of:"spider",name:"gen:paradise_crawler",weight:300,weight_level_multiplier:{v:100},base_entity:"spider",requirements:{biomes:["minecraft:bamboo_jungle","minecraft:jungle","minecraft:sparse_jungle","minecraft:flower_forest"],biomes_search_key:1b},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},summon_function:"function gen:mobs/internal/spawn_func/cosmetic/paradise_crawler",entity_data:{CustomName:'{"text":"Paradise Crawler","color":"white","italic":false}'}}}
##### Recluse
data modify storage gen:mobs registry append value {use_spawning_conditions_of:"spider",name:"gen:recluse",weight:200,weight_level_multiplier:{v:100},requirements:{biomes:["minecraft:grove","minecraft:dark_forest","minecraft:old_growth_birch_forest","minecraft:birch_forest","minecraft:forest","minecraft:flower_forest"],biomes_search_key:1b},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{Tags:["gen.recluse"],DeathLootTable:"gen:entities/recluse",CustomName:'{"text":"Recluse","color":"white","italic":false}',Attributes:[{Name:generic.attack_damage,Base:4}]}}
##### Snowy Recluse
data modify storage gen:mobs registry append value {use_spawning_conditions_of:"spider",name:"gen:snowy_recluse",weight:300,weight_level_multiplier:{v:100},requirements:{biomes:["minecraft:grove","minecraft:snowy_slopes","minecraft:frozen_peaks","minecraft:ice_spikes","minecraft:snowy_plains","minecraft:jagged_peaks","minecraft:snowy_taiga","minecraft:frozen_ocean","minecraft:snowy_beach","minecraft:frozen_river"],biomes_search_key:1b},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{Tags:["gen.snowy_recluse"],DeathLootTable:"gen:entities/snowy_recluse",CustomName:'{"text":"Snowy Recluse","color":"white","italic":false}',Attributes:[{Name:generic.attack_damage,Base:4}]}}
##### Shade
data modify storage gen:mobs registry append value {use_spawning_conditions_of:"creeper",name:"gen:shade",weight:300,weight_level_multiplier:{v:100},base_entity:"zombie",requirements:{dimension:"minecraft:overworld"},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{DeathLootTable:"gen:entities/shade",CustomName:'{"text":"Shade","color":"white","italic":false}',ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0},Trim:{material:"minecraft:netherite",pattern:"minecraft:snout"}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0},Trim:{material:"minecraft:netherite",pattern:"minecraft:snout"}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0},Trim:{material:"minecraft:netherite",pattern:"minecraft:snout"}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;491842860,-816561861,-1768107593,-1720754210],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjAwYjA2ODhiODAyYzY3MmIzNWMwMWI5OWI5ZWJhODRmZmVmNjRhNjI3M2UwNDVkN2UxMWZkYTVkNTQ1N2Q5MyJ9fX0="}]}}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b},{id:"minecraft:darkness",amplifier:1b,duration:-1,show_particles:1b}],Attributes:[{Name:generic.movement_speed,Base:0.18},{Name:generic.attack_damage,Base:5}]}}
##### Snow Sprite
data modify storage gen:mobs registry append value {use_spawning_conditions_of:"zombie",name:"gen:snow_sprite",weight:300,weight_level_multiplier:{v:100},requirements:{biomes:["minecraft:grove","minecraft:snowy_slopes","minecraft:frozen_peaks","minecraft:ice_spikes","minecraft:snowy_plains","minecraft:jagged_peaks","minecraft:snowy_taiga","minecraft:frozen_ocean","minecraft:snowy_beach","minecraft:frozen_river"],biomes_search_key:1b},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{Tags:["gen.snow_sprite"],DeathLootTable:"gen:entities/snow_sprite",CustomName:'{"text":"Snow Sprite","color":"white","italic":false}',active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1630341003,-1083290497,-1794142161,1611473077],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDgyZWQ1M2Q5N2U2MjhjYjMwYzlhNDIyZDU3ODU4NTdiNWZjZmJlNjg5NjFlMDdmY2I1MGY0ZTZjMTA1MjAxYiJ9fX0="}]}}}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],Attributes:[{Name:generic.armor,Base:15}]}}
##### Tundra Sprite
data modify storage gen:mobs registry append value {use_spawning_conditions_of:"zombie",name:"gen:tundra_sprite",weight:100,weight_level_multiplier:{v:100},requirements:{biomes:["minecraft:ice_spikes","minecraft:snowy_plains","minecraft:snowy_beach"],biomes_search_key:1b},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{Tags:["gen.tundra_sprite"],DeathLootTable:"gen:entities/tundra_sprite",CustomName:'{"text":"Tundra Sprite","color":"white","italic":false}',active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b}],Health:30f,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1907099476,2130398966,-2091712695,-923514624],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzc5MzdlNDQzZWU5MjE1NDI4ZDE2MjYzODc0N2NjYzU2OTYzZTMwYzEzYjk0Yzk5MmM3ZjA5YzEyN2Y4NDJlZSJ9fX0="}]}}}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],Attributes:[{Name:generic.max_health,Base:30},{Name:generic.armor,Base:18}]}}
##### Frostveil Knight
data modify storage gen:mobs registry append value {use_spawning_conditions_of:"skeleton",name:"gen:frostveil_knight",weight:100,weight_level_multiplier:{v:100},requirements:{level:{min:10},biomes:["minecraft:ice_spikes","minecraft:snowy_plains","minecraft:snowy_beach"],biomes_search_key:1b},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{DeathLootTable:"gen:entities/frostveil_knight",CustomName:'{"text":"Frostveil Knight","color":"white","italic":false}',Health:40f,HandItems:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:30719},Trim:{material:"minecraft:quartz",pattern:"minecraft:sentry"}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:30719},Trim:{material:"minecraft:quartz",pattern:"minecraft:sentry"}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:30719},Trim:{material:"minecraft:quartz",pattern:"minecraft:sentry"}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1443491320,889474814,-1803578482,-1878905540],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDgzZWEyM2VkM2Q1NWE1YjQxM2EwMmMyOTkyNDlkMTg4NzkxNjQzYTk2MDJhN2Q1MTFiODQ4YWM3NmE5YmU3NCJ9fX0="}]}}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.attack_damage,Base:5},{Name:generic.armor,Base:14},{Name:generic.armor_toughness,Base:20}]}}
##### Piglin Lorekeeper*
data modify storage gen:mobs registry append value {use_spawning_conditions_of:"piglin",name:"gen:piglin_lorekeeper",weight:50,weight_level_multiplier:{v:100},requirements:{biomes_search_key:1b,biomes:["minecraft:nether_wastes","minecraft:soul_sand_valley","minecraft:crimson_forest","minecraft:warped_forest","minecraft:basalt_deltas"]},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{CustomName:'{"text":"Piglin Lorekeeper","color":"white","italic":false}',HandItems:[{id:"minecraft:book",Count:1b}],HandDropChances:[-327.670F,-327.670F]}}
##### Nethercreep*
data modify storage gen:mobs registry append value {use_spawning_conditions_of:"piglin",name:"gen:nethercreep",weight:300,weight_level_multiplier:{v:100},base_entity:"spider",requirements:{dimension:"minecraft:the_nether"},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{CustomName:'{"text":"Nethercreep","color":"white","italic":false}'}}
##### Mesa Raindancer*
#data modify storage gen:mobs registry append value {use_spawning_conditions_of:"skeleton",name:"gen:mesa_raindancer",weight:300,weight_level_multiplier:{v:100},requirements:{biomes:["minecraft:wooded_badlands","minecraft:badlands","minecraft:eroded_badlands"],biomes_search_key:1b,weather:{raining:1b,thundering:1b}},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{temp}}
##### Ancient Sandkeeper*
data modify storage gen:mobs registry append value {use_spawning_conditions_of:"husk",name:"gen:ancient_sandkeeper",weight:300,weight_level_multiplier:{v:100},base_entity:"husk",requirements:{biomes_search_key:1b,biomes:["minecraft:desert"]},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{CustomName:'{"text":"Ancient Sandkeeper","color":"white","italic":false}',HandItems:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:982004}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:16764280}}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],Attributes:[{Name:generic.attack_damage,Base:4}]}}
##### Dune Reaver*
data modify storage gen:mobs registry append value {use_spawning_conditions_of:"husk",name:"gen:dune_reaver",weight:200,weight_level_multiplier:{v:100},requirements:{biomes_search_key:1b,biomes:["minecraft:desert"]},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{Health:28f,CustomName:'{"text":"Dune Reaver","color":"white","italic":false}',HandItems:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:982005}},{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:982005}}],HandDropChances:[-327.670F,-327.670F],ArmorItems:[{},{},{},{id:"minecraft:chiseled_sandstone",Count:1b,tag:{Enchantments:[{}]}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],Attributes:[{Name:generic.max_health,Base:28},{Name:generic.attack_damage,Base:6}]}}
##### Dune Marauder Lvl 15+*
data modify storage gen:mobs registry append value {use_spawning_conditions_of:"husk",name:"gen:dune_marauder",weight:150,weight_level_multiplier:{v:100},requirements:{level:{min:15},biomes_search_key:1b,biomes:["minecraft:desert"]},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{Health:30f,CustomName:'{"text":"Dune Marauder","color":"white","italic":false}',HandItems:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:982016}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:snout"}}},{id:"minecraft:iron_leggings",Count:1b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:snout"}}},{id:"minecraft:iron_chestplate",Count:1b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:snout"}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1804062326,619990726,-1719124696,-94933256],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzhhMTYwMzJhYmE1NDk0MDIwZDUyZDgzZTcyNjUyYWFhOTUwZDY1MGEzMzg4ZGE1MDU2NDE2NTg0NTBmNzdkNiJ9fX0="}]}}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:30},{Name:generic.knockback_resistance,Base:0.3},{Name:generic.movement_speed,Base:0.35},{Name:generic.attack_damage,Base:6}]}}
##### Scarab Beetle Lvl 15+*
data modify storage gen:mobs registry append value {use_spawning_conditions_of:"rabbit",name:"gen:scarab_beetle",weight:200,weight_level_multiplier:{v:100},base_entity:"silverfish",requirements:{level:{min:15},biomes_search_key:1b,biomes:["minecraft:desert"]},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},summon_function:"function gen:mobs/internal/spawn_func/scarab_beetle",entity_data:{CustomName:'{"text":"Scarab Beetle","color":"white","italic":false}',Attributes:[{Name:generic.movement_speed,Base:0.3}]}}
##### Piglin Shaman Lvl 15+*
data modify storage gen:mobs registry append value {use_spawning_conditions_of:"piglin",name:"gen:piglin_shaman",weight:100,weight_level_multiplier:{v:100},requirements:{level:{min:15},biomes_search_key:1b,biomes:["minecraft:nether_wastes","minecraft:soul_sand_valley","minecraft:crimson_forest","minecraft:warped_forest","minecraft:basalt_deltas"]},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{CustomName:'{"text":"Piglin Shaman","color":"white","italic":false}',Health:30f,HandItems:[{id:"minecraft:bone",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_aspect",lvl:3s}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-251626889,-794605545,-1472903999,-38976300],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTUwMGJhODY3NzFmMjk3MDZhZTczYzYyMWEyZjlhZGRiYTNjODI3OGZjYTJkMWRhMzE3YTMwZjM0ODI4MTVlNCJ9fX0="}]}}}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],Attributes:[{Name:generic.max_health,Base:30},{Name:generic.movement_speed,Base:0.4},{Name:generic.armor,Base:16}]}}
##### Arctic Shade Lvl 20+
data modify storage gen:mobs registry append value {use_spawning_conditions_of:"creeper",name:"gen:arctic_shade",weight:150,weight_level_multiplier:{v:100},base_entity:"zombie",requirements:{level:{min:20},biomes:["minecraft:ice_spikes","minecraft:snowy_plains","minecraft:snowy_beach"],biomes_search_key:1b},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{DeathLootTable:"gen:entities/arctic_shade",CustomName:'{"text":"Arctic Shade","color":"white","italic":false}',ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0},Trim:{material:"minecraft:diamond",pattern:"minecraft:snout"}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0},Trim:{material:"minecraft:diamond",pattern:"minecraft:snout"}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0},Trim:{material:"minecraft:diamond",pattern:"minecraft:snout"}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;257044033,1387022434,-1227930999,-1768534233],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTUzZDhiZTY3OTNmZmU5NjYxNjk3ODkyOWViZWY3NGVlODQ4Mzc5MzAwYTdkYTg0ZmM4MzJkNDEyODgzYTkzMyJ9fX0="}]}}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b},{id:"minecraft:darkness",amplifier:1b,duration:-1,show_particles:1b}],Attributes:[{Name:generic.knockback_resistance,Base:0.3},{Name:generic.movement_speed,Base:0.18},{Name:generic.attack_damage,Base:6}]}}
##### Abyss Roamer Lvl 20+
data modify storage gen:mobs registry append value {use_spawning_conditions_of:"zombified_piglin",name:"gen:abyss_roamer",weight:50,weight_level_multiplier:{v:100},base_entity:"wither_skeleton",requirements:{level:{min:20},biomes_search_key:1b,biomes:["minecraft:nether_wastes","minecraft:soul_sand_valley","minecraft:crimson_forest","minecraft:warped_forest","minecraft:basalt_deltas"]},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{DeathLootTable:"gen:entities/abyss_roamer",CustomName:'{"text":"Abyss Roamer","color":"white","italic":false}',HandItems:[{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:982009}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{Trim:{material:"minecraft:redstone",pattern:"minecraft:eye"}}},{id:"minecraft:netherite_leggings",Count:1b,tag:{Trim:{material:"minecraft:redstone",pattern:"minecraft:eye"}}},{id:"minecraft:netherite_chestplate",Count:1b,tag:{Trim:{material:"minecraft:redstone",pattern:"minecraft:eye"}}},{id:"minecraft:obsidian",Count:1b}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Health:36f,Attributes:[{Name:generic.max_health,Base:36},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:10},{Name:generic.armor,Base:20}]}}
##### Empyrean Roamer Lvl 20+
data modify storage gen:mobs registry append value {use_spawning_conditions_of:"zombified_piglin",name:"gen:empyrean_roamer",weight:50,weight_level_multiplier:{v:100},base_entity:"wither_skeleton",requirements:{level:{min:20},biomes_search_key:1b,biomes:["minecraft:nether_wastes","minecraft:soul_sand_valley","minecraft:crimson_forest","minecraft:warped_forest","minecraft:basalt_deltas"]},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{DeathLootTable:"gen:entities/empyrean_roamer",CustomName:'{"text":"Empyrean Roamer","color":"white","italic":false}',HandItems:[{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:982018}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{Trim:{material:"minecraft:lapis",pattern:"minecraft:eye"}}},{id:"minecraft:netherite_leggings",Count:1b,tag:{Trim:{material:"minecraft:lapis",pattern:"minecraft:eye"}}},{id:"minecraft:netherite_chestplate",Count:1b,tag:{Trim:{material:"minecraft:lapis",pattern:"minecraft:eye"}}},{id:"minecraft:obsidian",Count:1b}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Health:36f,Attributes:[{Name:generic.max_health,Base:36},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:10},{Name:generic.armor,Base:20}]}}
##### Primal Abyss Walker Lvl 25+
data modify storage gen:mobs registry append value {use_spawning_conditions_of:"zombified_piglin",name:"gen:primal_abyss_roamer",weight:15,weight_level_multiplier:{v:100},base_entity:"wither_skeleton",requirements:{level:{min:25},biomes_search_key:1b,biomes:["minecraft:nether_wastes","minecraft:soul_sand_valley","minecraft:crimson_forest","minecraft:warped_forest","minecraft:basalt_deltas"]},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{DeathLootTable:"gen:entities/primal_abyss_roamer",CustomName:'{"text":"Primal Abyss Roamer","color":"white","italic":false}',HandItems:[{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:982009}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{Enchantments:[{}],Trim:{material:"minecraft:redstone",pattern:"minecraft:eye"}}},{id:"minecraft:netherite_leggings",Count:1b,tag:{Enchantments:[{}],Trim:{material:"minecraft:redstone",pattern:"minecraft:eye"}}},{id:"minecraft:netherite_chestplate",Count:1b,tag:{Enchantments:[{}],Trim:{material:"minecraft:redstone",pattern:"minecraft:eye"}}},{id:"minecraft:crying_obsidian",Count:1b}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Health:50f,Attributes:[{Name:generic.max_health,Base:50},{Name:generic.knockback_resistance,Base:0.8},{Name:generic.movement_speed,Base:0.4},{Name:generic.attack_damage,Base:14},{Name:generic.armor,Base:20}]}}
##### Primal Empyrean Walker Lvl 25+
data modify storage gen:mobs registry append value {use_spawning_conditions_of:"zombified_piglin",name:"gen:primal_empyrean_roamer",weight:15,weight_level_multiplier:{v:100},base_entity:"wither_skeleton",requirements:{level:{min:25},biomes_search_key:1b,biomes:["minecraft:nether_wastes","minecraft:soul_sand_valley","minecraft:crimson_forest","minecraft:warped_forest","minecraft:basalt_deltas"]},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{DeathLootTable:"gen:entities/primal_empyrean_roamer",CustomName:'{"text":"Primal Empyrean Roamer","color":"white","italic":false}',HandItems:[{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:982018}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{Enchantments:[{}],Trim:{material:"minecraft:lapis",pattern:"minecraft:eye"}}},{id:"minecraft:netherite_leggings",Count:1b,tag:{Enchantments:[{}],Trim:{material:"minecraft:lapis",pattern:"minecraft:eye"}}},{id:"minecraft:netherite_chestplate",Count:1b,tag:{Enchantments:[{}],Trim:{material:"minecraft:lapis",pattern:"minecraft:eye"}}},{id:"minecraft:crying_obsidian",Count:1b}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Health:50f,Attributes:[{Name:generic.max_health,Base:50},{Name:generic.knockback_resistance,Base:0.8},{Name:generic.movement_speed,Base:0.4},{Name:generic.attack_damage,Base:14},{Name:generic.armor,Base:20}]}}
##### Voidstalker Lvl 25+
data modify storage gen:mobs registry append value {use_spawning_conditions_of:"enderman",name:"gen:voidstalker",weight:300,weight_level_multiplier:{v:100},base_entity:"wither_skeleton",requirements:{level:{min:25}},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{DeathLootTable:"gen:entities/voidstalker",Health:36f,CustomName:'{"text":"Voidstalker","color":"white","italic":false}',ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0},Trim:{material:"minecraft:netherite",pattern:"minecraft:snout"}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0},Trim:{material:"minecraft:netherite",pattern:"minecraft:snout"}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0},Trim:{material:"minecraft:netherite",pattern:"minecraft:snout"}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1819998149,258034181,-1538544495,-242442928],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWY4ZDYwZWU5YTI0YmE4YjBkMDVlMjVlOGY3NWFiYTU5MGQ1MjU1ZjA0NGU3ZjVhNDhjNTMwYjc5MzIyNGEyYyJ9fX0="}]}}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:36},{Name:generic.attack_damage,Base:9}]}}
##### Mirage Prism Lvl 25+*
data modify storage gen:mobs registry append value {use_spawning_conditions_of:"skeleton",name:"gen:mirage_prism",weight:500,weight_level_multiplier:{v:100},base_entity:"zombie",requirements:{biomes:["minecraft:desert","minecraft:wooded_badlands","minecraft:badlands","minecraft:eroded_badlands"],biomes_search_key:1b},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},summon_function:"function gen:mobs/internal/spawn_func/cosmetic/mirage_prism"}}


#Pirate
#summon vindicator ~ ~ ~ {DeathLootTable:"gen:entities/pirates/pirate",CustomName:'{"text":"Pirate","color":"white","italic":false}',HandItems:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:982006}},{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:982017}}],HandDropChances:[-327.670F,-327.670F],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-429219071,750798591,-1631140669,696607876],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWMzZGNhZDg3NWMyYzFhNjY4MTRhNjRiOWQzZjIzZDUxY2ZiNDZkY2NjYmVlNTE0Mjk4Njg1ODBkNTlkYTFmZSJ9fX0="}]}}}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F]}
#Corsair
#summon pillager ~ ~ ~ {DeathLootTable:"gen:entities/pirates/corsair",CustomName:'{"text":"Corsair","color":"white","italic":false}',HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{CustomModelData:982007}},{}],HandDropChances:[-327.670F,-327.670F],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-925591867,967918992,-1158844708,-788126814],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzc3NzliMzE5YjRkZGJlODJlYmU2M2YwY2Q1NjkyM2M2NTUxMmI5NTIxYWU1NzczNzJjYTMzNWY2ODY3M2E1In19fQ=="}]}}}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F]}
#Buccaneer
#summon vindicator ~ ~ ~ {DeathLootTable:"gen:entities/pirates/buccaneer",CustomName:'{"text":"Buccaneer","color":"white","italic":false}',HandItems:[{id:"minecraft:iron_axe",Count:1b},{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:982017}}],HandDropChances:[-327.670F,-327.670F],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-429219071,750798591,-1631140669,696607876],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWMzZGNhZDg3NWMyYzFhNjY4MTRhNjRiOWQzZjIzZDUxY2ZiNDZkY2NjYmVlNTE0Mjk4Njg1ODBkNTlkYTFmZSJ9fX0="}]}}}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],Attributes:[{Name:generic.armor,Base:10}]}
#Pirate Captain
#summon vindicator ~ ~ ~ {DeathLootTable:"gen:entities/pirates/pirate_captain",Health:50f,CustomName:'{"text":"Pirate Captain","color":"white","italic":false}',HandItems:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:982007}},{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:982017}}],HandDropChances:[-327.670F,-327.670F],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-2074349960,300959706,-2017449988,1729479738],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGMyNmY4ZWM5MGU3OWM0Y2E2ODU2Yzg1ZDJkMGZiN2ZkYjY2ZmE4NjljZjlkNjdkMWVkY2I4MmI0Yjc4ODQyMCJ9fX0="}]}}}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],Attributes:[{Name:generic.max_health,Base:50},{Name:generic.armor,Base:14}]}
#Pirate Fleet Commander
#summon vindicator ~ ~ ~ {DeathLootTable:"gen:entities/pirates/pirate_captain",Health:80f,CustomName:'{"text":"Pirate Fleet Commander","color":"white","italic":false}',HandItems:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:982025}},{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:982017}}],HandDropChances:[-327.670F,-327.670F],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-704570529,1725189476,-1748907780,-296658],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjdkZmFjNWU1YzYwNGJkZDc1MDI2ZGRmNmRiOWUzNzE1Nzk0MWM3Yjk3NGQ3NjYxODY0NmY1YTcyYTJhZWM3MCJ9fX0="}]}}}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],Attributes:[{Name:generic.max_health,Base:80},{Name:generic.armor,Base:20}]}
#Undead Pirate
#/summon skeleton ~ ~ ~ {CustomName:'{"text":"Undead Pirate","color":"white","italic":false}',HandItems:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:982006}},{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:982017}}],HandDropChances:[-327.670F,-327.670F],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1783493797,556812904,-1545789038,1671623265],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGU3MTZhZmM0NGU0MGY1MDJhNTY1ZTk3ZDZiMGUyYWZmMTQ2ODMxYzhiNTM3ZTJiZTg3M2E3MmZmMzQ3OWU4OSJ9fX0="}]}}}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],Attributes:[{Name:generic.attack_damage,Base:6},{Name:generic.armor,Base:16}]}
#Undead Pirate Captain
#/summon skeleton ~ ~ ~ {Health:50f,CustomName:'{"text":"Undead Pirate Captain","color":"white","italic":false}',HandItems:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:982021}},{}],HandDropChances:[-327.670F,-327.670F],ArmorItems:[{},{},{id:"minecraft:golden_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:unbreaking",lvl:3s}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1381529533,1886208591,-2034168588,-1159976672],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjc1NDBiOTM5ZThlOTcyNmNkMjc3NDBkNDQ4ZDExOGNjYTFmZGM1MDlmNTFjNTg4NzZjODU0ODBiMzAyMTQzZSJ9fX0="}]}}}}],ArmorDropChances:[0.085F,0.085F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:50},{Name:generic.knockback_resistance,Base:0.6},{Name:generic.attack_damage,Base:6},{Name:generic.armor,Base:20}]}
# ADD MOBS BETWEEN HERE
function gen:mobs/internal/registry/minecraft_base
function gen:mobs/data/registry_overriding
