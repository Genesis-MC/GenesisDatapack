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
data modify storage gen:mobs registry set value {axolotl:[],bat:[],egg:[],bee:[],blaze:[],camel:[],cat:[],cave_spider:[],chicken:[],cod:[],cow:[],creeper:[],dolphin:[],donkey:[],drowned:[],elder_guardian:[],ender_dragon:[],enderman:[],endermite:[],evoker:[],fox:[],frog:[],ghast:[],giant:[],glow_squid:[],goat:[],guardian:[],hoglin:[],horse:[],husk:[],illusioner:[],iron_golem:[],llama:[],magma_cube:[],mooshroom:[],mule:[],ocelot:[],panda:[],parrot:[],phantom:[],pig:[],piglin:[],piglin_brute:[],pillager:[],polar_bear:[],pufferfish:[],rabbit:[],ravager:[],salmon:[],sheep:[],shulker:[],silverfish:[],skeleton:[],skeleton_horse:[],slime:[],sniffer:[],snow_golem:[],spider:[],squid:[],stray:[],strider:[],tadpole:[],trader_llama:[],tropical_fish:[],turtle:[],vex:[],villager:[],vindicator:[],wandering_trader:[],warden:[],witch:[],wither:[],wither_skeleton:[],wolf:[],zoglin:[],zombie:[],zombie_horse:[],zombie_villager:[],zombified_piglin:[]}

data modify storage gen:mobs registry.zombie append value {name:"minecraft:base",weight:150}

data modify storage gen:mobs registry.spider append value {name:"foobar0",requirements:{moon_phase:{min:1,max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"0"'}}
data modify storage gen:mobs registry.spider append value {name:"foobar1",requirements:{moon_phase:{min:1,max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"1"'}}
data modify storage gen:mobs registry.spider append value {name:"foobar2",requirements:{moon_phase:{min:1,max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"2"'}}
data modify storage gen:mobs registry.spider append value {name:"foobar3",requirements:{moon_phase:{min:1,max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"3"'}}
data modify storage gen:mobs registry.spider append value {name:"foobar4",requirements:{moon_phase:{min:1,max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"4"'}}
data modify storage gen:mobs registry.spider append value {name:"foobar5",requirements:{moon_phase:{min:1,max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"5"'}}
data modify storage gen:mobs registry.spider append value {name:"foobar6",requirements:{moon_phase:{min:1,max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"6"'}}
data modify storage gen:mobs registry.spider append value {name:"foobar7",requirements:{moon_phase:{min:1,max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"7"'}}
data modify storage gen:mobs registry.spider append value {name:"foobar8",requirements:{moon_phase:{min:1,max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"8"'}}
data modify storage gen:mobs registry.spider append value {name:"foobar9",requirements:{moon_phase:{min:1,max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"9"'}}
data modify storage gen:mobs registry.spider append value {name:"foobar10",requirements:{moon_phase:{min:1,max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"10"'}}


data modify storage gen:mobs registry.skeleton append value {name:"foobar0",requirements:{moon_phase:{min:1,max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"0"'}}
data modify storage gen:mobs registry.skeleton append value {name:"foobar1",requirements:{moon_phase:{min:1,max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"1"'}}
data modify storage gen:mobs registry.skeleton append value {name:"foobar2",requirements:{moon_phase:{min:1,max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"2"'}}
data modify storage gen:mobs registry.skeleton append value {name:"foobar3",requirements:{moon_phase:{min:1,max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"3"'}}
data modify storage gen:mobs registry.skeleton append value {name:"foobar4",requirements:{moon_phase:{min:1,max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"4"'}}
data modify storage gen:mobs registry.skeleton append value {name:"foobar5",requirements:{moon_phase:{min:1,max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"5"'}}
data modify storage gen:mobs registry.skeleton append value {name:"foobar6",requirements:{moon_phase:{min:1,max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"6"'}}
data modify storage gen:mobs registry.skeleton append value {name:"foobar7",requirements:{moon_phase:{min:1,max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"7"'}}
data modify storage gen:mobs registry.skeleton append value {name:"foobar8",requirements:{moon_phase:{min:1,max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"8"'}}
data modify storage gen:mobs registry.skeleton append value {name:"foobar9",requirements:{moon_phase:{min:1,max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"9"'}}
data modify storage gen:mobs registry.skeleton append value {name:"foobar10",requirements:{moon_phase:{min:1,max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"10"'}}


data modify storage gen:mobs registry.creeper append value {name:"foobar0",requirements:{moon_phase:{min:1,max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"0"'}}
data modify storage gen:mobs registry.creeper append value {name:"foobar1",requirements:{moon_phase:{min:1,max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"1"'}}
data modify storage gen:mobs registry.creeper append value {name:"foobar2",requirements:{moon_phase:{min:1,max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"2"'}}
data modify storage gen:mobs registry.creeper append value {name:"foobar3",requirements:{moon_phase:{min:1,max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"3"'}}
data modify storage gen:mobs registry.creeper append value {name:"foobar4",requirements:{moon_phase:{min:1,max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"4"'}}
data modify storage gen:mobs registry.creeper append value {name:"foobar5",requirements:{moon_phase:{min:1,max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"5"'}}
data modify storage gen:mobs registry.creeper append value {name:"foobar6",requirements:{moon_phase:{min:1,max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"6"'}}
data modify storage gen:mobs registry.creeper append value {name:"foobar7",requirements:{moon_phase:{min:1,max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"7"'}}
data modify storage gen:mobs registry.creeper append value {name:"foobar8",requirements:{moon_phase:{min:1,max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"8"'}}
data modify storage gen:mobs registry.creeper append value {name:"foobar9",requirements:{moon_phase:{min:1,max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"9"'}}
data modify storage gen:mobs registry.creeper append value {name:"foobar10",requirements:{moon_phase:{min:1,max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"10"'}}


data modify storage gen:mobs registry.zombie append value {name:"foobarnoreq",weight:50,entity_data:{CustomName:'"0"'}}


data modify storage gen:mobs registry.zombie append value {name:"foobar0",requirements:{moon_phase:{exact:1},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"0"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar1",requirements:{moon_phase:{exact:2},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"1"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar2",requirements:{moon_phase:{exact:3},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"2"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar3",requirements:{moon_phase:{exact:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"3"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar4",requirements:{moon_phase:{exact:5},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"4"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar5",requirements:{moon_phase:{exact:6},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"5"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar6",requirements:{moon_phase:{exact:7},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"6"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar7",requirements:{moon_phase:{exact:8},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"7"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar8",requirements:{moon_phase:{min:1},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"10"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar9",requirements:{moon_phase:{min:2},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"11"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar10",requirements:{moon_phase:{min:3},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"12"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar11",requirements:{moon_phase:{min:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"13"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar12",requirements:{moon_phase:{min:5},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"14"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar13",requirements:{moon_phase:{min:6},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"15"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar14",requirements:{moon_phase:{min:7},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"16"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar15",requirements:{moon_phase:{min:8},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"17"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar16",requirements:{moon_phase:{max:1},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"19"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar17",requirements:{moon_phase:{max:2},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"20"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar18",requirements:{moon_phase:{max:3},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"21"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar19",requirements:{moon_phase:{max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"22"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar20",requirements:{moon_phase:{max:5},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"23"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar21",requirements:{moon_phase:{max:6},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"24"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar22",requirements:{moon_phase:{max:7},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"25"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar23",requirements:{moon_phase:{max:8},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"26"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar24",requirements:{moon_phase:{exact:1},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"0"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar25",requirements:{moon_phase:{exact:2},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"1"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar26",requirements:{moon_phase:{exact:3},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"2"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar27",requirements:{moon_phase:{exact:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"3"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar28",requirements:{moon_phase:{exact:5},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"4"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar29",requirements:{moon_phase:{exact:6},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"5"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar30",requirements:{moon_phase:{exact:7},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"6"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar31",requirements:{moon_phase:{exact:8},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"7"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar32",requirements:{moon_phase:{min:1},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"10"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar33",requirements:{moon_phase:{min:2},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"11"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar34",requirements:{moon_phase:{min:3},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"12"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar35",requirements:{moon_phase:{min:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"13"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar36",requirements:{moon_phase:{min:5},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"14"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar37",requirements:{moon_phase:{min:6},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"15"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar38",requirements:{moon_phase:{min:7},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"16"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar39",requirements:{moon_phase:{min:8},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"17"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar40",requirements:{moon_phase:{max:1},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"19"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar41",requirements:{moon_phase:{max:2},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"20"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar42",requirements:{moon_phase:{max:3},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"21"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar43",requirements:{moon_phase:{max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"22"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar44",requirements:{moon_phase:{max:5},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"23"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar45",requirements:{moon_phase:{max:6},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"24"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar46",requirements:{moon_phase:{max:7},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"25"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar47",requirements:{moon_phase:{max:8},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"26"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar48",requirements:{moon_phase:{exact:1},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"0"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar49",requirements:{moon_phase:{exact:2},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"1"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar50",requirements:{moon_phase:{exact:3},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"2"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar51",requirements:{moon_phase:{exact:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"3"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar52",requirements:{moon_phase:{exact:5},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"4"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar53",requirements:{moon_phase:{exact:6},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"5"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar54",requirements:{moon_phase:{exact:7},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"6"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar55",requirements:{moon_phase:{exact:8},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"7"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar56",requirements:{moon_phase:{min:1},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"10"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar57",requirements:{moon_phase:{min:2},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"11"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar58",requirements:{moon_phase:{min:3},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"12"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar59",requirements:{moon_phase:{min:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"13"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar60",requirements:{moon_phase:{min:5},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"14"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar61",requirements:{moon_phase:{min:6},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"15"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar62",requirements:{moon_phase:{min:7},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"16"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar63",requirements:{moon_phase:{min:8},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"17"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar64",requirements:{moon_phase:{max:1},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"19"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar65",requirements:{moon_phase:{max:2},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"20"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar66",requirements:{moon_phase:{max:3},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"21"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar67",requirements:{moon_phase:{max:4},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"22"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar68",requirements:{moon_phase:{max:5},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"23"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar69",requirements:{moon_phase:{max:6},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"24"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar70",requirements:{moon_phase:{max:7},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"25"'}}
data modify storage gen:mobs registry.zombie append value {name:"foobar71",requirements:{moon_phase:{max:8},block:"minecraft:iron_block",level:{min:1,max:10000}},weight:50,entity_data:{CustomName:'"26"'}}