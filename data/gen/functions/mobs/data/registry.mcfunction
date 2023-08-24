# registry 
#    registry.zombie will list all the possible values the zombie can be
#    base_entity is what the mob is like if 20% of zombies became piglins you have to set it to minecraft:piglin other wise defaults to the key it is assigned to
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
data modify storage gen:mobs registry set value {axolotl:[],bat:[],bee:[],blaze:[],camel:[],cat:[],cave_spider:[],chicken:[],cod:[],cow:[],creeper:[],dolphin:[],donkey:[],drowned:[],elder_guardian:[],ender_dragon:[],enderman:[],endermite:[],evoker:[],fox:[],frog:[],ghast:[],giant:[],glow_squid:[],goat:[],guardian:[],hoglin:[],horse:[],husk:[],illusioner:[],iron_golem:[],llama:[],magma_cube:[],mooshroom:[],mule:[],ocelot:[],panda:[],parrot:[],phantom:[],pig:[],piglin:[],piglin_brute:[],pillager:[],polar_bear:[],pufferfish:[],rabbit:[],ravager:[],salmon:[],sheep:[],shulker:[],silverfish:[],skeleton:[],skeleton_horse:[],slime:[],sniffer:[],snow_golem:[],spider:[],squid:[],stray:[],strider:[],tadpole:[],trader_llama:[],tropical_fish:[],turtle:[],vex:[],villager:[],vindicator:[],wandering_trader:[],warden:[],witch:[],wither:[],wither_skeleton:[],wolf:[],zoglin:[],zombie:[],zombie_horse:[],zombie_villager:[],zombified_piglin:[]}

function #gen:mobs/data/registries
# ADD MOBS BETWEEN HERE
data modify storage gen:mobs registry.zombie append value {name:"minecraft:default",weight:100}

data modify storage gen:mobs registry.zombie append value {name:"S",weight:10000,summon_function:"function gen:mobs/internal/mobs/demon/test/s"}

## Mobs are sorted by level min requirement
#Verdant Zombie
data modify storage gen:mobs registry.zombie append value {name:"gen:verdant_zombie",weight:100,weight_level_multiplier:{v:100},base_entity:"zombie",requirements:{biome:"#minecraft:is_forest"},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{DeathLootTable:"gen:entities/verdant_zombie",CustomName:'{"text":"Verdant Zombie","color":"white","italic":false}',ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:952064}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:952064}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:952064}}},{id:"minecraft:oak_leaves",Count:1b,tag:{display:{color:952064}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.attack_damage,Base:2}]}}
#Sentient Elderwood
data modify storage gen:mobs registry.zombie append value {name:"gen:sentient_elderwood",weight:100,weight_level_multiplier:{v:100},base_entity:"drowned",requirements:{biome:"minecraft:dark_forest"},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},summon_function:"",entity_data:{CustomName:'{"text":"Sentient Elderwood","color":"white","italic":false}',ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:1983003}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:1983003}}},{id:"minecraft:chainmail_chestplate",Count:1b,tag:{Trim:{material:"minecraft:emerald",pattern:"minecraft:vex"}}},{id:"minecraft:dark_oak_wood",Count:1b,tag:{Enchantments:[{}]}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F]}}
#Paradise Crawler
data modify storage gen:mobs registry.spider append value {name:"gen:paradise_crawler",weight:300,weight_level_multiplier:{v:100},base_entity:"spider",requirements:{biome:"#minecraft:is_jungle"},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{DeathLootTable:"gen:entities/paradise_crawler",Health:20f,Passengers:[{id:"minecraft:block_display",Rotation:[0F,180F],Tags:["mob_cosmetic"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:spore_blossom"}}],CustomName:'{"text":"Paradise Crawler","color":"white","italic":false}',Attributes:[{Name:generic.max_health,Base:20},{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:4}]}}
#Piglin Lorekeeper
data modify storage gen:mobs registry.piglin append value {name:"gen:piglin_lorekeeper",weight:50,weight_level_multiplier:{v:100},requirements:{biome:"#minecraft:is_nether",biomeTag:1b},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{CustomName:'{"text":"Piglin Lorekeeper","color":"white","italic":false}',HandItems:[{id:"minecraft:book",Count:1b}],HandDropChances:[-327.670F,-327.670F]}}
#Ancient Sandkeeper
data modify storage gen:mobs registry.husk append value {name:"gen:ancient_sandkeeper",weight:300,weight_level_multiplier:{v:100},base_entity:"husk",requirements:{biome:"minecraft:desert"},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{CustomName:'{"text":"Ancient Sandkeeper","color":"white","italic":false}',HandItems:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:982004}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:16764280}}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],Attributes:[{Name:generic.attack_damage,Base:4}]}}
#Dune Reaver
data modify storage gen:mobs registry.husk append value {name:"gen:dune_reaver",weight:200,weight_level_multiplier:{v:100},requirements:{biome:"minecraft:desert"},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{Health:28f,CustomName:'{"text":"Dune Reaver","color":"white","italic":false}',HandItems:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:982005}},{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:982005}}],HandDropChances:[-327.670F,-327.670F],ArmorItems:[{},{},{},{id:"minecraft:chiseled_sandstone",Count:1b,tag:{Enchantments:[{}]}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],Attributes:[{Name:generic.max_health,Base:28},{Name:generic.attack_damage,Base:6}]}}
#Dune Marauder Lvl 15+
data modify storage gen:mobs registry.husk append value {name:"gen:dune_marauder",weight:150,weight_level_multiplier:{v:100},requirements:{level:{min:15},biome:"minecraft:desert"},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{Health:30f,CustomName:'{"text":"Dune Marauder","color":"white","italic":false}',HandItems:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:982016}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:snout"}}},{id:"minecraft:iron_leggings",Count:1b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:snout"}}},{id:"minecraft:iron_chestplate",Count:1b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:snout"}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1804062326,619990726,-1719124696,-94933256],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzhhMTYwMzJhYmE1NDk0MDIwZDUyZDgzZTcyNjUyYWFhOTUwZDY1MGEzMzg4ZGE1MDU2NDE2NTg0NTBmNzdkNiJ9fX0="}]}}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:30},{Name:generic.knockback_resistance,Base:0.3},{Name:generic.movement_speed,Base:0.35},{Name:generic.attack_damage,Base:6}]}}
#Scarab Beetle Lvl 15+
data modify storage gen:mobs registry.rabbit append value {name:"gen:scarab_beetle",weight:400,weight_level_multiplier:{v:100},base_entity:"silverfish",requirements:{level:{min:15},biome:"minecraft:desert"},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},summon_function:"function gen:mobs/internal/spawn_func/scarab_beetle",entity_data:{CustomName:'{"text":"Scarab Beetle","color":"white","italic":false}',Attributes:[{Name:generic.movement_speed,Base:0.3}]}}
#Piglin Shaman Lvl 15+
data modify storage gen:mobs registry.piglin append value {name:"gen:piglin_shaman",weight:100,weight_level_multiplier:{v:100},requirements:{level:{min:15},biome:"#minecraft:is_nether",biomeTag:1b},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{CustomName:'{"text":"Piglin Shaman","color":"white","italic":false}',Health:30f,HandItems:[{id:"minecraft:bone",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_aspect",lvl:3s}]}},{}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-251626889,-794605545,-1472903999,-38976300],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTUwMGJhODY3NzFmMjk3MDZhZTczYzYyMWEyZjlhZGRiYTNjODI3OGZjYTJkMWRhMzE3YTMwZjM0ODI4MTVlNCJ9fX0="}]}}}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],Attributes:[{Name:generic.max_health,Base:30},{Name:generic.movement_speed,Base:0.4},{Name:generic.armor,Base:16}]}}
#Abyss Roamer Lvl 20+
data modify storage gen:mobs registry.zombified_piglin append value {name:"gen:abyss_roamer",weight:50,weight_level_multiplier:{v:100},base_entity:"wither_skeleton",requirements:{level:{min:20},biome:"#minecraft:is_nether",biomeTag:1b},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{CustomName:'{"text":"Abyss Roamer","color":"white","italic":false}',HandItems:[{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:982009}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{Trim:{material:"minecraft:redstone",pattern:"minecraft:eye"}}},{id:"minecraft:netherite_leggings",Count:1b,tag:{Trim:{material:"minecraft:redstone",pattern:"minecraft:eye"}}},{id:"minecraft:netherite_chestplate",Count:1b,tag:{Trim:{material:"minecraft:redstone",pattern:"minecraft:eye"}}},{id:"minecraft:obsidian",Count:1b}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Health:36f,Attributes:[{Name:generic.max_health,Base:36},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:10},{Name:generic.armor,Base:20}]}}
#Primal Abyss Walker Lvl 20+
data modify storage gen:mobs registry.zombified_piglin append value {name:"gen:primal_abyss_roamer",weight:15,weight_level_multiplier:{v:100},base_entity:"wither_skeleton",requirements:{level:{min:20},biome:"#minecraft:is_nether",biomeTag:1b},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{CustomName:'{"text":"Primal Abyss Roamer","color":"white","italic":false}',HandItems:[{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:982009}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{Enchantments:[{}],Trim:{material:"minecraft:redstone",pattern:"minecraft:eye"}}},{id:"minecraft:netherite_leggings",Count:1b,tag:{Enchantments:[{}],Trim:{material:"minecraft:redstone",pattern:"minecraft:eye"}}},{id:"minecraft:netherite_chestplate",Count:1b,tag:{Enchantments:[{}],Trim:{material:"minecraft:redstone",pattern:"minecraft:eye"}}},{id:"minecraft:crying_obsidian",Count:1b}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Health:50f,Attributes:[{Name:generic.max_health,Base:50},{Name:generic.knockback_resistance,Base:0.8},{Name:generic.movement_speed,Base:0.4},{Name:generic.attack_damage,Base:14},{Name:generic.armor,Base:20}]}}
#Empyrean Roamer Lvl 20+
data modify storage gen:mobs registry.zombified_piglin append value {name:"gen:empyrean_roamer",weight:50,weight_level_multiplier:{v:100},base_entity:"wither_skeleton",requirements:{level:{min:20},biome:"#minecraft:is_nether",biomeTag:1b},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{CustomName:'{"text":"Empyrean Roamer","color":"white","italic":false}',HandItems:[{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:982018}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{Trim:{material:"minecraft:lapis",pattern:"minecraft:eye"}}},{id:"minecraft:netherite_leggings",Count:1b,tag:{Trim:{material:"minecraft:lapis",pattern:"minecraft:eye"}}},{id:"minecraft:netherite_chestplate",Count:1b,tag:{Trim:{material:"minecraft:lapis",pattern:"minecraft:eye"}}},{id:"minecraft:obsidian",Count:1b}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Health:36f,Attributes:[{Name:generic.max_health,Base:36},{Name:generic.knockback_resistance,Base:0.5},{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:10},{Name:generic.armor,Base:20}]}}
#Primal Empyrean Walker Lvl 20+
data modify storage gen:mobs registry.zombified_piglin append value {name:"gen:primal_empyrean_roamer",weight:15,weight_level_multiplier:{v:100},base_entity:"wither_skeleton",requirements:{level:{min:20},biome:"#minecraft:is_nether",biomeTag:1b},stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{CustomName:'{"text":"Primal Empyrean Roamer","color":"white","italic":false}',HandItems:[{id:"minecraft:iron_nugget",Count:1b,tag:{CustomModelData:982018}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{Enchantments:[{}],Trim:{material:"minecraft:lapis",pattern:"minecraft:eye"}}},{id:"minecraft:netherite_leggings",Count:1b,tag:{Enchantments:[{}],Trim:{material:"minecraft:lapis",pattern:"minecraft:eye"}}},{id:"minecraft:netherite_chestplate",Count:1b,tag:{Enchantments:[{}],Trim:{material:"minecraft:lapis",pattern:"minecraft:eye"}}},{id:"minecraft:crying_obsidian",Count:1b}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Health:50f,Attributes:[{Name:generic.max_health,Base:50},{Name:generic.knockback_resistance,Base:0.8},{Name:generic.movement_speed,Base:0.4},{Name:generic.attack_damage,Base:14},{Name:generic.armor,Base:20}]}}

#Nethercreep
#{Passengers:[{id:"minecraft:armor_stand",Small:1b,Marker:1b,Invisible:1b,Pose:{Head:[0f,0f,180f]},ArmorItems:[{},{},{},{id:"minecraft:red_glazed_terracotta",Count:1b}]}]}
#Morph Abyss/Empyrean
#{Passengers:[{id:"minecraft:end_crystal",Invulnerable:1b,ShowBottom:0b}]}
#Undead Pirate
#/summon skeleton ~ ~ ~ {CustomName:'{"text":"Undead Pirate","color":"white","italic":false}',HandItems:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:982017}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1783493797,556812904,-1545789038,1671623265],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGU3MTZhZmM0NGU0MGY1MDJhNTY1ZTk3ZDZiMGUyYWZmMTQ2ODMxYzhiNTM3ZTJiZTg3M2E3MmZmMzQ3OWU4OSJ9fX0="}]}}}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],Attributes:[{Name:generic.attack_damage,Base:6},{Name:generic.armor,Base:16}]}
#Undead Pirate Captain
#/summon skeleton ~ ~ ~ {Health:50f,CustomName:'{"text":"Undead Pirate Captain","color":"white","italic":false}',HandItems:[{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:982017}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{},{},{id:"minecraft:golden_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:unbreaking",lvl:3s}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1381529533,1886208591,-2034168588,-1159976672],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjc1NDBiOTM5ZThlOTcyNmNkMjc3NDBkNDQ4ZDExOGNjYTFmZGM1MDlmNTFjNTg4NzZjODU0ODBiMzAyMTQzZSJ9fX0="}]}}}}],ArmorDropChances:[0.085F,0.085F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:50},{Name:generic.knockback_resistance,Base:0.6},{Name:generic.attack_damage,Base:6},{Name:generic.armor,Base:20}]}










data modify storage gen:mobs registry.axolotl append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.bat append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.bee append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.blaze append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.camel append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.cat append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.cave_spider append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.chicken append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.cod append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.cow append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.creeper append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.dolphin append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.donkey append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.drowned append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.elder_guardian append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.ender_dragon append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.enderman append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.endermite append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.evoker append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.fox append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.frog append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.ghast append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.giant append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.glow_squid append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.goat append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.guardian append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.hoglin append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.horse append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.husk append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.illusioner append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.iron_golem append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.llama append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.magma_cube append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.mooshroom append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.mule append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.ocelot append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.panda append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.parrot append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.phantom append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.pig append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.piglin append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.piglin_brute append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.pillager append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.polar_bear append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.pufferfish append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.rabbit append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.ravager append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.salmon append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.sheep append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.shulker append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.silverfish append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.skeleton append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.skeleton_horse append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.slime append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.sniffer append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.snow_golem append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.spider append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.squid append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.stray append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.strider append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.tadpole append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.trader_llama append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.tropical_fish append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.turtle append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.vex append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.villager append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.vindicator append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.wandering_trader append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.warden append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.witch append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.wither append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.wither_skeleton append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.wolf append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.zoglin append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.zombie append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.zombie_horse append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.zombie_villager append value {name:"minecraft:base",weight:1000}
data modify storage gen:mobs registry.zombified_piglin append value {name:"minecraft:base",weight:1000}








# ADD MOBS BETWEEN HERE
function #gen:mobs/data/registry_overriding