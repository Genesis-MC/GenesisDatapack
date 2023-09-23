

execute if entity @s[nbt={HandItems:[{tag:{gen:{EnhancementCrystal:1b}}},{}]}] run function gen:professions/mineralogy/internal/crystalarium/upgrade_tier

execute at @s run summon item ~ ~1 ~ {Item:{id:"structure_void",Count:1b},Tags:["armor_stand_mainhand"]}
execute at @s run data modify entity @e[distance=..2,type=item,limit=1,tag=armor_stand_mainhand,nbt={Item:{id:"minecraft:structure_void"}}] Item set from entity @s HandItems[0]
data merge entity @s {HandItems:[{},{}]}