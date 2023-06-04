
#set a non-player entity's level

tag @s add notYetNamed

#Calculating level
scoreboard players operation @s entitylvl += @p entitylvl
execute if predicate gen:random50 run scoreboard players add @s entitylvl 1
execute if predicate gen:random50 run scoreboard players add @s entitylvl 1
execute if predicate gen:random50 run scoreboard players add @s entitylvl 1
execute if predicate gen:random50 run scoreboard players add @s entitylvl 1
execute if predicate gen:random50 run scoreboard players add @s entitylvl 1
execute if predicate gen:random50 run scoreboard players remove @s entitylvl 1
execute if predicate gen:random50 run scoreboard players remove @s entitylvl 1
execute if score @s entitylvl matches 2.. if predicate gen:random50 run scoreboard players remove @s entitylvl 1
execute if score @s entitylvl matches 2.. if predicate gen:random50 run scoreboard players remove @s entitylvl 1
execute if score @s entitylvl matches 2.. if predicate gen:random50 run scoreboard players remove @s entitylvl 1
#If entity has a higher level than nearest player, it gains an extra health and dmg buff
execute if score @s entitylvl > @a[sort=nearest,limit=1] entitylvl run attribute @s generic.max_health modifier add 4861dcc4-46a4-4385-8d2a-95ad14183634 "addhp" 2 add
execute if score @s entitylvl > @a[sort=nearest,limit=1] entitylvl run attribute @s generic.attack_damage modifier add 3c9d23d7-5216-413c-a636-c71e0f548b28 "adddmg" 1 add
#Adds world level
scoreboard players operation @s entitylvl += @e[type=armor_stand,tag=GenesisArmorstand,limit=1] worldlvl

#Determines if mob will become custom mob or not
execute if score @e[type=armor_stand,tag=GenesisArmorstand,limit=1] worldlvl matches 3.. if predicate gen:random25 run tag @s add CustomMob
execute as @s[tag=CustomMob] run function gen:misc/internal/changetocustommob

#Naming
#----------------------------------------------------------------------------------------------------------
execute if score @s entitylvl matches 1 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ¹』"}'
execute if score @s entitylvl matches 2 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ²』"}'
execute if score @s entitylvl matches 3 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ³』"}'
execute if score @s entitylvl matches 4 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁴』"}'
execute if score @s entitylvl matches 5 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁵』"}'
execute if score @s entitylvl matches 6 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁶』"}'
execute if score @s entitylvl matches 7 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁷』"}'
execute if score @s entitylvl matches 8 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁸』"}'
execute if score @s entitylvl matches 9 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ⁹』"}'
execute if score @s entitylvl matches 10 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ¹⁰』"}'
execute if score @s entitylvl matches 11 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ¹¹』"}'
execute if score @s entitylvl matches 12 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ¹²』"}'
execute if score @s entitylvl matches 13 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ¹³』"}'
execute if score @s entitylvl matches 14 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ¹⁴』"}'
execute if score @s entitylvl matches 15 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ¹⁵』"}'
execute if score @s entitylvl matches 16 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ¹⁶』"}'
execute if score @s entitylvl matches 17 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ¹⁷』"}'
execute if score @s entitylvl matches 18 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ¹⁸』"}'
execute if score @s entitylvl matches 19 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ¹⁹』"}'
execute if score @s entitylvl matches 20 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ²⁰』"}'
execute if score @s entitylvl matches 21 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ²¹』"}'
execute if score @s entitylvl matches 22 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ²²』"}'
execute if score @s entitylvl matches 23 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ²³』"}'
execute if score @s entitylvl matches 24 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ²⁴』"}'
execute if score @s entitylvl matches 25 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ²⁵』"}'
execute if score @s entitylvl matches 26 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ²⁶』"}'
execute if score @s entitylvl matches 27 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ²⁷』"}'
execute if score @s entitylvl matches 28 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ²⁸』"}'
execute if score @s entitylvl matches 29 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ²⁹』"}'
execute if score @s entitylvl matches 30 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ³⁰』"}'
execute if score @s entitylvl matches 31 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ³¹』"}'
execute if score @s entitylvl matches 32 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ³²』"}'
execute if score @s entitylvl matches 33 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ³³』"}'
execute if score @s entitylvl matches 34 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ³⁴』"}'
execute if score @s entitylvl matches 35 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ³⁵』"}'
execute if score @s entitylvl matches 36 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ³⁶』"}'
execute if score @s entitylvl matches 37 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ³⁷』"}'
execute if score @s entitylvl matches 38 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ³⁸』"}'
execute if score @s entitylvl matches 39 run data modify entity @s CustomName set value '{"text":"『ᴸᵛᴸ³⁹』"}'
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
#execute if entity @s[tag=!CustomMob, type=camel] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Camel"}]'}
#execute if entity @s[tag=!CustomMob, type=sniffer] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Sniffer"}]'}
#----------------------------------------------------------------------------------------------------------
#Custom Mobs
execute if entity @s[tag=MutatedZombie] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Mutated Zombie"}]'}
#----------------------------------------------------------------------------------------------------------
execute at @e[tag=GenesisArmorstand,type=armor_stand] run data modify entity @s CustomName set from block ~ ~-1 ~ Text1
execute at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ air

#Adding additional attribute stats to entity depending on its level
execute if score @s entitylvl matches 5.. run attribute @s generic.max_health modifier add a7fb2423-8b28-4d07-9899-6fec8d7bc1f8 "addhp" 1 add
execute if score @s entitylvl matches 10.. run attribute @s generic.attack_damage modifier add fadc409d-b5a6-46c2-8534-a6b712ab47ab "adddmg" 1 add
execute if score @s entitylvl matches 15.. run attribute @s generic.max_health modifier add 92d0bfa5-554a-47ad-881e-8d7867023811 "addhp" 1 add
execute if score @s entitylvl matches 20.. run attribute @s generic.movement_speed modifier add 291c710b-8411-4955-93a9-96f426359342 "addspeed" .05 multiply_base
execute if score @s entitylvl matches 20.. run attribute @s generic.armor modifier add 218d2a56-4029-4051-8b17-9499dfd1b77d "addarmor" 2 add
execute if score @s entitylvl matches 25.. run attribute @s generic.max_health modifier add b253b5be-c068-46e0-8c9c-7f136c2a4cd3 "addhp" 2 add
execute if score @s entitylvl matches 25.. run attribute @s generic.attack_damage modifier add b45b24d1-f5f9-4826-a37e-aba99ae45179 "adddmg" 1 add
execute if score @s entitylvl matches 30.. run attribute @s generic.armor modifier add d18a95d2-94e7-4958-9e74-e8bcc6e1fe8e "addarmor" 2 add
#execute if score @s entitylvl matches 10.. run attribute @s generic.max_health modifier add

tag @s remove notYetNamed
tag @s add identified
