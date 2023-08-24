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