
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

scoreboard players operation @s entitylvl += @e[type=armor_stand,tag=GenesisArmorstand,limit=1] worldlvl

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

#Naming
data modify entity @s CustomNameVisible set value 1b
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
execute if entity @s[type=allay] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Allay"}]'}
execute if entity @s[type=axolotl] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Axolotl"}]'}
execute if entity @s[type=bat] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Bat"}]'}
execute if entity @s[type=cat] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Cat"}]'}
execute if entity @s[type=chicken] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Chicken"}]'}
execute if entity @s[type=cod] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Cod"}]'}
execute if entity @s[type=cow] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Cow"}]'}
execute if entity @s[type=donkey] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Donkey"}]'}
execute if entity @s[type=fox] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Fox"}]'}
execute if entity @s[type=frog] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Frog"}]'}
execute if entity @s[type=glow_squid] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Glow Squid"}]'}
execute if entity @s[type=horse] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Horse"}]'}
execute if entity @s[type=mooshroom] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Mooshroom"}]'}
execute if entity @s[type=mule] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Mule"}]'}
execute if entity @s[type=ocelot] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Ocelot"}]'}
execute if entity @s[type=parrot] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Parrot"}]'}
execute if entity @s[type=pig] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Pig"}]'}
execute if entity @s[type=pufferfish] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Pufferfish"}]'}
execute if entity @s[type=rabbit] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Rabbit"}]'}
execute if entity @s[type=salmon] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Salmon"}]'}
execute if entity @s[type=sheep] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Sheep"}]'}
execute if entity @s[type=skeleton_horse] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Skeleton Horse"}]'}
execute if entity @s[type=snow_golem] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Snow Golem"}]'}
execute if entity @s[type=squid] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Squid"}]'}
execute if entity @s[type=strider] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Strider"}]'}
execute if entity @s[type=tadpole] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Tadpole"}]'}
execute if entity @s[type=tropical_fish] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Tropical Fish"}]'}
execute if entity @s[type=turtle] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Turtle"}]'}
execute if entity @s[type=villager] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Villager"}]'}
execute if entity @s[type=wandering_trader] at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"@e[tag=notYetNamed]","interpret":true},{"text":"Wandering Trader"}]'}
#----------------------------------------------------------------------------------------------------------
execute at @e[tag=GenesisArmorstand,type=armor_stand] run data modify entity @s CustomName set from block ~ ~-1 ~ Text1
execute at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ air


tag @s remove notYetNamed
tag @s add identified