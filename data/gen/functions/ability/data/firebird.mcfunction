#40 mana cost
execute if score @s gen.mana.current matches ..3999 run return 0
scoreboard players remove @s gen.mana.current 4000

## Credit to the Minecraft Commands Subreddit

summon marker ~ ~ ~ {Tags:["gen.ability.direction"]}
execute as @e[tag=gen.ability.direction,limit=1] positioned 0.0 0.0 0.0 run function gen:ability/data/helper_functions/get_projectile_motion
execute anchored eyes run summon chicken ^ ^ ^ {CustomName:'{"text":"Firebird","color":"red","italic":false}',DeathLootTable:"gen:core/empty",Fire:60,Invulnerable:1b,Tags:["gen.ability.projectile","gen.ability.firebird"],Attributes:[{Name:generic.movement_speed,Base:0}]}
data modify entity @e[tag=gen.ability.projectile,limit=1] Motion set from storage gen:ability motion

tag @e[tag=gen.ability.projectile] remove gen.ability.projectile

scoreboard players set #div gen.math 10
scoreboard players operation #firebird_dmg gen.math = @s gen.stat.magic_power
scoreboard players operation #firebird_dmg gen.math /= #div gen.math
execute store result storage gen:ability firebird_dmg.dmg int 1 run scoreboard players get #firebird_dmg gen.math

#2.5 sec cooldown
scoreboard players set .cooldown gen.ability 50