
#30 mana cost
execute if score @s gen.mana.current matches ..2999 run return 0
scoreboard players remove @s gen.mana.current 3000

execute anchored eyes run function gen:particles/line/firework
playsound entity.firework_rocket.blast_far player @a ~ ~ ~ 0.5 1.5

scoreboard players set #div gen.math 15
scoreboard players operation #piercing_light_dmg gen.math = @s gen.stat.magic_power
scoreboard players operation #piercing_light_dmg gen.math /= #div gen.math
execute store result storage gen:ability piercing_light_dmg.dmg int 1 run scoreboard players get #piercing_light_dmg gen.math
execute anchored eyes positioned ^ ^-1 ^1 as @e[distance=..1,tag=!gen.ally,type=#gen:alive] run function gen:ability/data/macros/single_target with storage gen:ability piercing_light_dmg 
execute anchored eyes positioned ^ ^-1 ^2 as @e[distance=..1,tag=!gen.ally,type=#gen:alive] run function gen:ability/data/macros/single_target with storage gen:ability piercing_light_dmg 
execute anchored eyes positioned ^ ^-1 ^3 as @e[distance=..1,tag=!gen.ally,type=#gen:alive] run function gen:ability/data/macros/single_target with storage gen:ability piercing_light_dmg 
execute anchored eyes positioned ^ ^-1 ^4 as @e[distance=..1,tag=!gen.ally,type=#gen:alive] run function gen:ability/data/macros/single_target with storage gen:ability piercing_light_dmg 
execute anchored eyes positioned ^ ^-1 ^5 as @e[distance=..1,tag=!gen.ally,type=#gen:alive] run function gen:ability/data/macros/single_target with storage gen:ability piercing_light_dmg 
execute anchored eyes positioned ^ ^-1 ^6 as @e[distance=..1,tag=!gen.ally,type=#gen:alive] run function gen:ability/data/macros/single_target with storage gen:ability piercing_light_dmg 
execute anchored eyes positioned ^ ^-1 ^7 as @e[distance=..1,tag=!gen.ally,type=#gen:alive] run function gen:ability/data/macros/single_target with storage gen:ability piercing_light_dmg 
execute anchored eyes positioned ^ ^-1 ^8 as @e[distance=..1,tag=!gen.ally,type=#gen:alive] run function gen:ability/data/macros/single_target with storage gen:ability piercing_light_dmg 
execute anchored eyes positioned ^ ^-1 ^9 as @e[distance=..1,tag=!gen.ally,type=#gen:alive] run function gen:ability/data/macros/single_target with storage gen:ability piercing_light_dmg 

#3.5 sec cooldown
scoreboard players set .cooldown gen.ability 70