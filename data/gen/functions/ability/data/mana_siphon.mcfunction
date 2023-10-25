#0 Mana Cost
#Gain 1 mana/20 magic power for every opponent in a 3-block radius + 1 block for every 40 magic power
scoreboard players set #div gen.math 20
scoreboard players set #mult gen.math 100
scoreboard players set .mana_gained_total gen.math 0
scoreboard players operation .mana_gained_per gen.math = @s gen.stat.magic_power
scoreboard players operation .mana_gained_per gen.math /= #div gen.math
scoreboard players operation .mana_gained_per gen.math += @s gen.class.elemental
scoreboard players operation .mana_gained_per gen.math *= #mult gen.math

execute as @e[distance=..7,tag=!gen.ally,type=#gen:alive] run scoreboard players operation .mana_gained_total gen.math += .mana_gained_per gen.math
execute as @e[distance=..7,tag=!gen.ally,type=#gen:alive] at @s run particle minecraft:dust_color_transition 0 0.5 1 3 0 1.3 1 ~ ~1 ~ 0.3 0.3 0.3 0 40

scoreboard players operation @s gen.mana.current += .mana_gained_total gen.math
#tellraw @s ["",{"text":"Mana Gained Per: ","color":"blue"},{"score":{"name":".mana_gained_per","objective":"gen.math"}},"\n",{"text":"Mana Gained Total: ","color":"dark_aqua"},{"score":{"name":".mana_gained_total","objective":"gen.math"}}]
#18 sec cooldown
scoreboard players set .cooldown gen.ability 360
