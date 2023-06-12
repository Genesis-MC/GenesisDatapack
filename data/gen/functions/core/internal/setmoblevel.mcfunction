
#sets a mob's level and name

tag @s add notYetNamed

#Calculating mob level
scoreboard players operation @s genesis.entity_lvl += @p genesis.entity_lvl
#Adding Randomizer values
execute if predicate gen:random50 run scoreboard players add @s genesis.entity_lvl 1
execute if predicate gen:random50 run scoreboard players add @s genesis.entity_lvl 1
execute if predicate gen:random50 run scoreboard players add @s genesis.entity_lvl 1
execute if score @s genesis.entity_lvl matches 2.. if predicate gen:random50 run scoreboard players remove @s genesis.entity_lvl 1
execute if score @s genesis.entity_lvl matches 2.. if predicate gen:random50 run scoreboard players remove @s genesis.entity_lvl 1
execute if score @s genesis.entity_lvl matches 2.. if predicate gen:random50 run scoreboard players remove @s genesis.entity_lvl 1
#Adding world level
scoreboard players operation @s genesis.entity_lvl += #worldlvltracker genesis.world_lvl

#Determines if mob will become custom mob or not
execute if score @e[type=armor_stand,tag=GenesisArmorstand,limit=1] genesis.world_lvl matches 3.. if predicate gen:random25 run tag @s add CustomMob
execute as @s[tag=CustomMob] run function gen:core/internal/changetocustommob

#Naming
#----------------------------------------------------------------------------------------------------------
execute if score @s genesis.entity_lvl matches 1 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ¹』"}'
execute if score @s genesis.entity_lvl matches 2 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ²』"}'
execute if score @s genesis.entity_lvl matches 3 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ³』"}'
execute if score @s genesis.entity_lvl matches 4 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁴』"}'
execute if score @s genesis.entity_lvl matches 5 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁵』"}'
execute if score @s genesis.entity_lvl matches 6 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁶』"}'
execute if score @s genesis.entity_lvl matches 7 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁷』"}'
execute if score @s genesis.entity_lvl matches 8 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁸』"}'
execute if score @s genesis.entity_lvl matches 9 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁹』"}'
execute if score @s genesis.entity_lvl matches 10 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ¹⁰』"}'
execute if score @s genesis.entity_lvl matches 11 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ¹¹』"}'
execute if score @s genesis.entity_lvl matches 12 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ¹²』"}'
execute if score @s genesis.entity_lvl matches 13 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ¹³』"}'
execute if score @s genesis.entity_lvl matches 14 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ¹⁴』"}'
execute if score @s genesis.entity_lvl matches 15 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ¹⁵』"}'
execute if score @s genesis.entity_lvl matches 16 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ¹⁶』"}'
execute if score @s genesis.entity_lvl matches 17 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ¹⁷』"}'
execute if score @s genesis.entity_lvl matches 18 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ¹⁸』"}'
execute if score @s genesis.entity_lvl matches 19 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ¹⁹』"}'
execute if score @s genesis.entity_lvl matches 20 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ²⁰』"}'
execute if score @s genesis.entity_lvl matches 21 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ²¹』"}'
execute if score @s genesis.entity_lvl matches 22 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ²²』"}'
execute if score @s genesis.entity_lvl matches 23 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ²³』"}'
execute if score @s genesis.entity_lvl matches 24 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ²⁴』"}'
execute if score @s genesis.entity_lvl matches 25 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ²⁵』"}'
execute if score @s genesis.entity_lvl matches 26 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ²⁶』"}'
execute if score @s genesis.entity_lvl matches 27 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ²⁷』"}'
execute if score @s genesis.entity_lvl matches 28 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ²⁸』"}'
execute if score @s genesis.entity_lvl matches 29 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ²⁹』"}'
execute if score @s genesis.entity_lvl matches 30 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ³⁰』"}'
execute if score @s genesis.entity_lvl matches 31 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ³¹』"}'
execute if score @s genesis.entity_lvl matches 32 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ³²』"}'
execute if score @s genesis.entity_lvl matches 33 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ³³』"}'
execute if score @s genesis.entity_lvl matches 34 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ³⁴』"}'
execute if score @s genesis.entity_lvl matches 35 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ³⁵』"}'
execute if score @s genesis.entity_lvl matches 36 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ³⁶』"}'
execute if score @s genesis.entity_lvl matches 37 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ³⁷』"}'
execute if score @s genesis.entity_lvl matches 38 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ³⁸』"}'
execute if score @s genesis.entity_lvl matches 39 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ³⁹』"}'
execute if score @s genesis.entity_lvl matches 40 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁴⁰』"}'
execute if score @s genesis.entity_lvl matches 41 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁴¹』"}'
execute if score @s genesis.entity_lvl matches 42 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁴²』"}'
execute if score @s genesis.entity_lvl matches 43 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁴³』"}'
execute if score @s genesis.entity_lvl matches 44 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁴⁴』"}'
execute if score @s genesis.entity_lvl matches 45 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁴⁵』"}'
execute if score @s genesis.entity_lvl matches 46 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁴⁶』"}'
execute if score @s genesis.entity_lvl matches 47 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁴⁷』"}'
execute if score @s genesis.entity_lvl matches 48 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁴⁸』"}'
execute if score @s genesis.entity_lvl matches 49 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁴⁹』"}'
execute if score @s genesis.entity_lvl matches 50 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁵⁰』"}'
execute if score @s genesis.entity_lvl matches 51 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁵¹』"}'
execute if score @s genesis.entity_lvl matches 52 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁵²』"}'
execute if score @s genesis.entity_lvl matches 53 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁵³』"}'
execute if score @s genesis.entity_lvl matches 54 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁵⁴』"}'
execute if score @s genesis.entity_lvl matches 55 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁵⁵』"}'
execute if score @s genesis.entity_lvl matches 56 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁵⁶』"}'
execute if score @s genesis.entity_lvl matches 57 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁵⁷』"}'
execute if score @s genesis.entity_lvl matches 58 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁵⁸』"}'
execute if score @s genesis.entity_lvl matches 59 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁵⁹』"}'
execute if score @s genesis.entity_lvl matches 60 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁶⁰』"}'
execute if score @s genesis.entity_lvl matches 61 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁶¹』"}'
execute if score @s genesis.entity_lvl matches 62 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁶²』"}'
execute if score @s genesis.entity_lvl matches 63 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁶³』"}'
execute if score @s genesis.entity_lvl matches 64 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁶⁴』"}'
execute if score @s genesis.entity_lvl matches 65 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁶⁵』"}'
execute if score @s genesis.entity_lvl matches 66 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁶⁶』"}'
execute if score @s genesis.entity_lvl matches 67 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁶⁷』"}'
execute if score @s genesis.entity_lvl matches 68 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁶⁸』"}'
execute if score @s genesis.entity_lvl matches 69 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁶⁹』"}'
execute if score @s genesis.entity_lvl matches 70 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁷⁰』"}'
execute if score @s genesis.entity_lvl matches 71 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁷¹』"}'
execute if score @s genesis.entity_lvl matches 72 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁷²』"}'
execute if score @s genesis.entity_lvl matches 73 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁷³』"}'
execute if score @s genesis.entity_lvl matches 74 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁷⁴』"}'
execute if score @s genesis.entity_lvl matches 75 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁷⁵』"}'
execute if score @s genesis.entity_lvl matches 76 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁷⁶』"}'
execute if score @s genesis.entity_lvl matches 77 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁷⁷』"}'
execute if score @s genesis.entity_lvl matches 78 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁷⁸』"}'
execute if score @s genesis.entity_lvl matches 79 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁷⁹』"}'
execute if score @s genesis.entity_lvl matches 80 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁸⁰』"}'
#MORE LEVELS WILL BE ADDED
#----------------------------------------------------------------------------------------------------------
#Vanilla Mobs
execute if entity @s[tag=!CustomMob, type=allay] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Allay"}]'}
execute if entity @s[tag=!CustomMob, type=axolotl] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Axolotl"}]'}
execute if entity @s[tag=!CustomMob, type=bat] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Bat"}]'}
execute if entity @s[tag=!CustomMob, type=cat] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Cat"}]'}
execute if entity @s[tag=!CustomMob, type=chicken] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Chicken"}]'}
execute if entity @s[tag=!CustomMob, type=cod] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Cod"}]'}
execute if entity @s[tag=!CustomMob, type=cow] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Cow"}]'}
execute if entity @s[tag=!CustomMob, type=donkey] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Donkey"}]'}
execute if entity @s[tag=!CustomMob, type=fox] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Fox"}]'}
execute if entity @s[tag=!CustomMob, type=frog] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Frog"}]'}
execute if entity @s[tag=!CustomMob, type=glow_squid] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Glow Squid"}]'}
execute if entity @s[tag=!CustomMob, type=horse] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Horse"}]'}
execute if entity @s[tag=!CustomMob, type=mooshroom] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Mooshroom"}]'}
execute if entity @s[tag=!CustomMob, type=mule] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Mule"}]'}
execute if entity @s[tag=!CustomMob, type=ocelot] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Ocelot"}]'}
execute if entity @s[tag=!CustomMob, type=parrot] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Parrot"}]'}
execute if entity @s[tag=!CustomMob, type=pig] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Pig"}]'}
execute if entity @s[tag=!CustomMob, type=pufferfish] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Pufferfish"}]'}
execute if entity @s[tag=!CustomMob, type=rabbit] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Rabbit"}]'}
execute if entity @s[tag=!CustomMob, type=salmon] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Salmon"}]'}
execute if entity @s[tag=!CustomMob, type=sheep] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Sheep"}]'}
execute if entity @s[tag=!CustomMob, type=skeleton_horse] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Skeleton Horse"}]'}
execute if entity @s[tag=!CustomMob, type=snow_golem] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Snow Golem"}]'}
execute if entity @s[tag=!CustomMob, type=squid] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Squid"}]'}
execute if entity @s[tag=!CustomMob, type=strider] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Strider"}]'}
execute if entity @s[tag=!CustomMob, type=tadpole] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Tadpole"}]'}
execute if entity @s[tag=!CustomMob, type=tropical_fish] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Tropical Fish"}]'}
execute if entity @s[tag=!CustomMob, type=turtle] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Turtle"}]'}
execute if entity @s[tag=!CustomMob, type=villager] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Villager"}]'}
execute if entity @s[tag=!CustomMob, type=wandering_trader] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Wandering Trader"}]'}
execute if entity @s[tag=!CustomMob, type=bee] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Bee"}]'}
execute if entity @s[tag=!CustomMob, type=cave_spider] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Cave Spider"}]'}
execute if entity @s[tag=!CustomMob, type=dolphin] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Dolphin"}]'}
execute if entity @s[tag=!CustomMob, type=enderman] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Enderman"}]'}
execute if entity @s[tag=!CustomMob, type=goat] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Goat"}]'}
execute if entity @s[tag=!CustomMob, type=iron_golem] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Iron Golem"}]'}
execute if entity @s[tag=!CustomMob, type=llama] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Llama"}]'}
execute if entity @s[tag=!CustomMob, type=panda] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Panda"}]'}
execute if entity @s[tag=!CustomMob, type=piglin] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Piglin"}]'}
execute if entity @s[tag=!CustomMob, type=polar_bear] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Polar Bear"}]'}
execute if entity @s[tag=!CustomMob, type=spider] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Spider"}]'}
execute if entity @s[tag=!CustomMob, type=trader_llama] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Trader Llama"}]'}
execute if entity @s[tag=!CustomMob, type=wolf] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Wolf"}]'}
execute if entity @s[tag=!CustomMob, type=zombified_piglin] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Zombified Piglin"}]'}
execute if entity @s[tag=!CustomMob, type=blaze] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Blaze"}]'}
execute if entity @s[tag=!CustomMob, type=creeper] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Creeper"}]'}
execute if entity @s[tag=!CustomMob, type=drowned] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Drowned"}]'}
execute if entity @s[tag=!CustomMob, type=elder_guardian] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Elder Guardian"}]'}
execute if entity @s[tag=!CustomMob, type=endermite] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Endermite"}]'}
execute if entity @s[tag=!CustomMob, type=evoker] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Evoker"}]'}
execute if entity @s[tag=!CustomMob, type=ghast] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Ghast"}]'}
execute if entity @s[tag=!CustomMob, type=guardian] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Guardian"}]'}
execute if entity @s[tag=!CustomMob, type=hoglin] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Hoglin"}]'}
execute if entity @s[tag=!CustomMob, type=husk] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Husk"}]'}
execute if entity @s[tag=!CustomMob, type=magma_cube] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Magma Cube"}]'}
execute if entity @s[tag=!CustomMob, type=phantom] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Phantom"}]'}
execute if entity @s[tag=!CustomMob, type=piglin_brute] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Piglin Brute"}]'}
execute if entity @s[tag=!CustomMob, type=pillager] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Pillager"}]'}
execute if entity @s[tag=!CustomMob, type=ravager] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Ravager"}]'}
execute if entity @s[tag=!CustomMob, type=shulker] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Shulker"}]'}
execute if entity @s[tag=!CustomMob, type=silverfish] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Silverfish"}]'}
execute if entity @s[tag=!CustomMob, type=skeleton] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Skeleton"}]'}
execute if entity @s[tag=!CustomMob, type=slime] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Slime"}]'}
execute if entity @s[tag=!CustomMob, type=stray] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Stray"}]'}
execute if entity @s[tag=!CustomMob, type=vex] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Vex"}]'}
execute if entity @s[tag=!CustomMob, type=vindicator] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Vindicator"}]'}
execute if entity @s[tag=!CustomMob, type=warden] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Warden"}]'}
execute if entity @s[tag=!CustomMob, type=witch] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Witch"}]'}
execute if entity @s[tag=!CustomMob, type=wither_skeleton] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Wither Skeleton"}]'}
execute if entity @s[tag=!CustomMob, type=zoglin] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Zoglin"}]'}
execute if entity @s[tag=!CustomMob, type=zombie] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Zombie"}]'}
execute if entity @s[tag=!CustomMob, type=zombie_villager] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Zombie Villager"}]'}
execute if entity @s[tag=!CustomMob, type=camel] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Camel"}]'}
execute if entity @s[tag=!CustomMob, type=sniffer] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Sniffer"}]'}
#----------------------------------------------------------------------------------------------------------
#Custom Mobs
execute if entity @s[tag=MutatedZombie] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Mutated Zombie"}]'}
#----------------------------------------------------------------------------------------------------------
execute at @e[tag=GenesisArmorstand,type=armor_stand] run data modify entity @s CustomName set from block ~ ~-1 ~ Text1
execute at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ air

tag @s remove notYetNamed
tag @s add identified
