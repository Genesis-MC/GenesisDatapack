playsound entity.elder_guardian.curse hostile @a ~ ~ ~ 1 2
playsound entity.elder_guardian.curse hostile @a ~ ~ ~ 1 0.1
playsound entity.skeleton_horse.death hostile @a ~ ~ ~ 1 0.1
playsound minecraft:entity.evoker.celebrate master @a ~ ~ ~ 1 0.1
particle dust 0 0 0 1 ~ ~ ~ 0.5 1 0.5 1 500
effect give @p[tag=this] blindness 5 0 true
effect give @p[tag=this] slowness 5 1 true
scoreboard players set #bool gen.temp 1
#execute store success score #bool gen.temp if predicate gen:randomizer/random50
execute if score #bool gen.temp matches 1 run summon vindicator ~ ~ ~ {HandDropChances:[-1000F,-1000F],DeathLootTable:"gen:entities/wandering_traitor",Tags:["new","smithed.entity","gen.mobs.custom_mob"],CustomName:'"Wandering Traitor"',HandItems:[{id:"minecraft:iron_sword",Count:1b},{id:"minecraft:lantern",Count:1b}]}
execute if score #bool gen.temp matches 0 run summon pillager ~ ~ ~ {HandDropChances:[-1000F,-1000F],DeathLootTable:"gen:entities/wandering_traitor",Tags:["new","smithed.entity","gen.mobs.custom_mob"],CustomName:'"Wandering Traitor"',HandItems:[{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:quick_charge",lvl:5}],Damage:0,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:1,Explosions:[{Type:3,FadeColors:[I;15790320],Colors:[I;4408131],Flicker:1b,Trail:1b}]}}}],Charged:1b},Count:1b},{}]}
execute as @e[tag=new] run function gen:mobs/internal/ai/wandering_traitor/steal
execute facing entity @p[tag=this] feet run tp @e[tag=new,limit=1] ^ ^ ^8 ~ ~ 
tag @e remove new
tp ~ ~-1000 ~