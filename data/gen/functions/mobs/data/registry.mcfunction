# registry 
# ONLY WORKS FOR NOW FOR ZOMBIES SKELETONS CREPEERS SPIDERS YOU CAN ADD THE OTHERS IF YOU WISH GO TO gen:mobs/internal/spawning/custom_mob/ENTITY THEN FOLLOW THE PATTERN
#    registry.zombie will list all the possible values the zombie can be
#    base_entity (NOT YET IMPLEMENTED) is what the mob is like if 20% of zombies became piglins you have to set it to minecraft:piglin other wise defaults to the key it is assigned to
#    name is what used to search for the json key
#    spawn_pack (NOT YET IMPLEMENTED) is the amount of mobs it will spawn of that type
#    spawn_pack_distance (NOT YET IMPLEMENTED) is the amount of distance the pack mobs will be seperated deaults to 1 block
#    weight is self explantory
#    weight_multiplier (NOT YET IMPLEMENTED) will increase base wieght with the multipler * level 
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


data modify storage gen:mobs registry.zombie append value {name:"na",weight:100,stat_increases:{flat:{health:{n:100s,p:50b,b:0.300000f}}},entity_data:{CustomName:'"negative"'}}

function #gen:mobs/data/registry_overriding