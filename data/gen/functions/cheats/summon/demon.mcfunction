summon wither_skeleton ~ ~ ~ {Tags:["new","smithed.entity","gen.mobs.custom_mob","gen.mobs.demon","gen.mobs.boss","gen.bossbars.local_16"],DeathLootTable:"gen:entities/demon",CustomName:'{"translate":"genesis.mobs.demon"}',HandItems:[{id:"minecraft:netherite_sword",Count:1b},{id:"minecraft:netherite_axe",Count:1b}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Trim:{material:"minecraft:redstone",pattern:"minecraft:silence"},display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{Trim:{material:"minecraft:redstone",pattern:"minecraft:silence"},display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Trim:{material:"minecraft:redstone",pattern:"minecraft:silence"},display:{color:0}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;2094320305,75974761,-1937175670,1754043735],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDZkODQ0MDg1NDM0NTYyMTI4YTMyNDhhZDQzMDI3ZDE2OTY0Y2UxNTI0YmZhNmRjYzhiMmZiNDk5Y2Y1OTY0ZCJ9fX0="}]}}}}],HandDropChances:[-1000F,-1000F],ArmorDropChances:[-1000F,-1000F,-1000F,-1000F],Attributes:[{Name:generic.max_health,Base:200d},{Name:generic.knockback_resistance,Base:.1}],Health:200f}
execute as @e[tag=new,limit=1] run function gen:mobs/internal/mobs/demon/summon
tag @e[tag=new,limit=1] remove new