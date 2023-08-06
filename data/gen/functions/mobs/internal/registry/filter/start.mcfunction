tellraw @a[tag=gen.dev.debug.all] ["",{"text":"gen/mobs -> ","color":"#CBBECB"},{"text":"mob list filtered!","color":"yellow"}]

data modify storage gen:mobs can_spawn set value {axolotl:[],bat:[],egg:[],bee:[],blaze:[],camel:[],cat:[],cave_spider:[],chicken:[],cod:[],cow:[],creeper:[],dolphin:[],donkey:[],drowned:[],elder_guardian:[],ender_dragon:[],enderman:[],endermite:[],evoker:[],fox:[],frog:[],ghast:[],giant:[],glow_squid:[],goat:[],guardian:[],hoglin:[],horse:[],husk:[],illusioner:[],iron_golem:[],llama:[],magma_cube:[],mooshroom:[],mule:[],ocelot:[],panda:[],parrot:[],phantom:[],pig:[],piglin:[],piglin_brute:[],pillager:[],polar_bear:[],pufferfish:[],rabbit:[],ravager:[],salmon:[],sheep:[],shulker:[],silverfish:[],skeleton:[],skeleton_horse:[],slime:[],sniffer:[],snow_golem:[],spider:[],squid:[],stray:[],strider:[],tadpole:[],trader_llama:[],tropical_fish:[],turtle:[],vex:[],villager:[],vindicator:[],wandering_trader:[],warden:[],witch:[],wither:[],wither_skeleton:[],wolf:[],zoglin:[],zombie:[],zombie_horse:[],zombie_villager:[],zombified_piglin:[]}
data modify storage gen:mobs read set value []

data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.axolotl
execute if data storage gen:mobs registry.axolotl[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.axolotl set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.bat
execute if data storage gen:mobs registry.bat[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.bat set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.egg
execute if data storage gen:mobs registry.egg[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.egg set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.bee
execute if data storage gen:mobs registry.bee[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.bee set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.blaze
execute if data storage gen:mobs registry.blaze[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.blaze set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.camel
execute if data storage gen:mobs registry.camel[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.camel set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.cat
execute if data storage gen:mobs registry.cat[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.cat set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.cave_spider
execute if data storage gen:mobs registry.cave_spider[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.cave_spider set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.chicken
execute if data storage gen:mobs registry.chicken[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.chicken set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.cod
execute if data storage gen:mobs registry.cod[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.cod set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.cow
execute if data storage gen:mobs registry.cow[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.cow set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.creeper
execute if data storage gen:mobs registry.creeper[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.creeper set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.dolphin
execute if data storage gen:mobs registry.dolphin[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.dolphin set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.donkey
execute if data storage gen:mobs registry.donkey[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.donkey set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.drowned
execute if data storage gen:mobs registry.drowned[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.drowned set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.elder_guardian
execute if data storage gen:mobs registry.elder_guardian[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.elder_guardian set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.ender_dragon
execute if data storage gen:mobs registry.ender_dragon[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.ender_dragon set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.enderman
execute if data storage gen:mobs registry.enderman[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.enderman set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.endermite
execute if data storage gen:mobs registry.endermite[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.endermite set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.evoker
execute if data storage gen:mobs registry.evoker[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.evoker set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.fox
execute if data storage gen:mobs registry.fox[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.fox set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.frog
execute if data storage gen:mobs registry.frog[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.frog set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.ghast
execute if data storage gen:mobs registry.ghast[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.ghast set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.giant
execute if data storage gen:mobs registry.giant[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.giant set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.glow_squid
execute if data storage gen:mobs registry.glow_squid[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.glow_squid set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.goat
execute if data storage gen:mobs registry.goat[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.goat set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.guardian
execute if data storage gen:mobs registry.guardian[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.guardian set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.hoglin
execute if data storage gen:mobs registry.hoglin[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.hoglin set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.horse
execute if data storage gen:mobs registry.horse[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.horse set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.husk
execute if data storage gen:mobs registry.husk[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.husk set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.illusioner
execute if data storage gen:mobs registry.illusioner[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.illusioner set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.iron_golem
execute if data storage gen:mobs registry.iron_golem[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.iron_golem set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.llama
execute if data storage gen:mobs registry.llama[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.llama set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.magma_cube
execute if data storage gen:mobs registry.magma_cube[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.magma_cube set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.mooshroom
execute if data storage gen:mobs registry.mooshroom[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.mooshroom set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.mule
execute if data storage gen:mobs registry.mule[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.mule set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.ocelot
execute if data storage gen:mobs registry.ocelot[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.ocelot set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.panda
execute if data storage gen:mobs registry.panda[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.panda set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.parrot
execute if data storage gen:mobs registry.parrot[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.parrot set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.phantom
execute if data storage gen:mobs registry.phantom[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.phantom set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.pig
execute if data storage gen:mobs registry.pig[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.pig set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.piglin
execute if data storage gen:mobs registry.piglin[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.piglin set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.piglin_brute
execute if data storage gen:mobs registry.piglin_brute[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.piglin_brute set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.pillager
execute if data storage gen:mobs registry.pillager[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.pillager set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.polar_bear
execute if data storage gen:mobs registry.polar_bear[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.polar_bear set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.pufferfish
execute if data storage gen:mobs registry.pufferfish[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.pufferfish set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.rabbit
execute if data storage gen:mobs registry.rabbit[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.rabbit set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.ravager
execute if data storage gen:mobs registry.ravager[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.ravager set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.salmon
execute if data storage gen:mobs registry.salmon[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.salmon set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.sheep
execute if data storage gen:mobs registry.sheep[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.sheep set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.shulker
execute if data storage gen:mobs registry.shulker[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.shulker set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.silverfish
execute if data storage gen:mobs registry.silverfish[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.silverfish set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.skeleton
execute if data storage gen:mobs registry.skeleton[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.skeleton set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.skeleton_horse
execute if data storage gen:mobs registry.skeleton_horse[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.skeleton_horse set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.slime
execute if data storage gen:mobs registry.slime[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.slime set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.sniffer
execute if data storage gen:mobs registry.sniffer[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.sniffer set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.snow_golem
execute if data storage gen:mobs registry.snow_golem[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.snow_golem set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.spider
execute if data storage gen:mobs registry.spider[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.spider set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.squid
execute if data storage gen:mobs registry.squid[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.squid set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.stray
execute if data storage gen:mobs registry.stray[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.stray set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.strider
execute if data storage gen:mobs registry.strider[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.strider set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.tadpole
execute if data storage gen:mobs registry.tadpole[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.tadpole set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.trader_llama
execute if data storage gen:mobs registry.trader_llama[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.trader_llama set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.tropical_fish
execute if data storage gen:mobs registry.tropical_fish[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.tropical_fish set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.turtle
execute if data storage gen:mobs registry.turtle[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.turtle set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.vex
execute if data storage gen:mobs registry.vex[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.vex set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.villager
execute if data storage gen:mobs registry.villager[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.villager set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.vindicator
execute if data storage gen:mobs registry.vindicator[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.vindicator set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.wandering_trader
execute if data storage gen:mobs registry.wandering_trader[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.wandering_trader set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.warden
execute if data storage gen:mobs registry.warden[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.warden set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.witch
execute if data storage gen:mobs registry.witch[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.witch set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.wither
execute if data storage gen:mobs registry.wither[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.wither set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.wither_skeleton
execute if data storage gen:mobs registry.wither_skeleton[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.wither_skeleton set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.wolf
execute if data storage gen:mobs registry.wolf[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.wolf set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.zoglin
execute if data storage gen:mobs registry.zoglin[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.zoglin set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.zombie
execute if data storage gen:mobs registry.zombie[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.zombie set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.zombie_horse
execute if data storage gen:mobs registry.zombie_horse[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.zombie_horse set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.zombie_villager
execute if data storage gen:mobs registry.zombie_villager[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.zombie_villager set from storage gen:mobs read
data modify storage gen:mobs read set value []
data modify storage gen:mobs read set from storage gen:mobs registry.zombified_piglin
execute if data storage gen:mobs registry.zombified_piglin[0] run function gen:mobs/internal/registry/filter/filtering
data modify storage gen:mobs can_spawn.zombified_piglin set from storage gen:mobs read




function gen:mobs/internal/registry/get_data/start