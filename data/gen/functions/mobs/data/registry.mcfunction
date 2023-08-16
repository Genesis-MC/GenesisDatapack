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
# IF YOU ADD A NEW REGISTRED ITEM TO THE REGISTRY NOT THROUGH THIS FILE DO THIS /function gen:mobs/internal/registry/changed
data modify storage gen:mobs registry set value {axolotl:[],bat:[],bee:[],blaze:[],camel:[],cat:[],cave_spider:[],chicken:[],cod:[],cow:[],creeper:[],dolphin:[],donkey:[],drowned:[],elder_guardian:[],ender_dragon:[],enderman:[],endermite:[],evoker:[],fox:[],frog:[],ghast:[],giant:[],glow_squid:[],goat:[],guardian:[],hoglin:[],horse:[],husk:[],illusioner:[],iron_golem:[],llama:[],magma_cube:[],mooshroom:[],mule:[],ocelot:[],panda:[],parrot:[],phantom:[],pig:[],piglin:[],piglin_brute:[],pillager:[],polar_bear:[],pufferfish:[],rabbit:[],ravager:[],salmon:[],sheep:[],shulker:[],silverfish:[],skeleton:[],skeleton_horse:[],slime:[],sniffer:[],snow_golem:[],spider:[],squid:[],stray:[],strider:[],tadpole:[],trader_llama:[],tropical_fish:[],turtle:[],vex:[],villager:[],vindicator:[],wandering_trader:[],warden:[],witch:[],wither:[],wither_skeleton:[],wolf:[],zoglin:[],zombie:[],zombie_horse:[],zombie_villager:[],zombified_piglin:[]}

function #gen:mobs/data/registries

data modify storage gen:mobs registry.zombie append value {name:"minecraft:default",weight:100}

data modify storage gen:mobs registry.zombie append value {name:"nfffffffa",weight:10,summon_function:"summon tnt",entity_data:{CustomName:'"negative"'}}

#Verdant Zombie
data modify storage gen:mobs registry.zombie append value {name:"gen:verdant_zombie",weight:100,weight_level_multiplier:{v:100},base_entity:"zombie",stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{DeathLootTable:"gen:entities/verdant_zombie",CustomName:'{"text":"Verdant Zombie","color":"green","italic":false}',ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:952064}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:952064}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:952064}}},{id:"minecraft:oak_leaves",Count:1b,tag:{display:{color:952064}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F]},Health:8f,Attributes:[{Name:generic.attack_damage,Base:2}]}
#Paradise Crawler
data modify storage gen:mobs registry.spider append value {name:"gen:paradise_crawler",weight:300,weight_level_multiplier:{v:100},base_entity:"spider",stat_increases:{flat:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]},percentage:{armor:[0,15,1],armor_toughness:[0,15,100],follow_range:[0,15,50],knockback_resistance:[0,15,25]}},entity_data:{DeathLootTable:"gen:entities/paradise_crawler",CustomName:'{"text":"Paradise Crawler","color":"white","italic":false}'},Health:10f,Attributes:[{Name:generic.movement_speed,Base:0.1},{Name:generic.attack_damage,Base:3}],Passengers:[{id:"minecraft:armor_stand",Small:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:fern",Count:1b,tag:{CustomModelData:982001}}]}]}

function #gen:mobs/data/registry_overriding