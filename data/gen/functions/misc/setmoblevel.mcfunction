
#set a non-player entity's level

scoreboard players operation @s entitylvl += @e[type=armor_stand,tag=GenesisArmorstand,limit=1] worldlvl
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

data modify entity @s CustomNameVisible set value 1b
data modify entity @s CustomName set value '{"text":"ASSDFDE"}'
#execute if score @s entitylvl matches 1 run data modify entity @s CustomName set value '{"text":"[ᴸᵛᴸ¹]"}'
#execute if score @s entitylvl matches 2 run data modify entity @s CustomName set value '{"text":"[ᴸᵛᴸ²]"}'
#execute if score @s entitylvl matches 3 run data modify entity @s CustomName set value '{"text":"[ᴸᵛᴸ³]"}'
#execute if score @s entitylvl matches 4 run data modify entity @s CustomName set value '{"text":"[ᴸᵛᴸ⁴]"}'
#execute if score @s entitylvl matches 5 run data modify entity @s CustomName set value '{"text":"[ᴸᵛᴸ⁵]"}'
#execute if score @s entitylvl matches 6 run data modify entity @s CustomName set value '{"text":"[ᴸᵛᴸ⁶]"}'
#execute if score @s entitylvl matches 7 run data modify entity @s CustomName set value '{"text":"[ᴸᵛᴸ⁷]"}'
#execute if score @s entitylvl matches 8 run data modify entity @s CustomName set value '{"text":"[ᴸᵛᴸ⁸]"}'
#execute if score @s entitylvl matches 9 run data modify entity @s CustomName set value '{"text":"[ᴸᵛᴸ⁹]"}'
#execute if score @s entitylvl matches 10 run data modify entity @s CustomName set value '{"text":"[ᴸᵛᴸ¹⁰]"}'
#execute if score @s entitylvl matches 11 run data modify entity @s CustomName set value '{"text":"[ᴸᵛᴸ¹¹]"}'
#execute if score @s entitylvl matches 12 run data modify entity @s CustomName set value '{"text":"[ᴸᵛᴸ¹²]"}'
#execute if score @s entitylvl matches 13 run data modify entity @s CustomName set value '{"text":"[ᴸᵛᴸ¹³]"}'
#execute if score @s entitylvl matches 14 run data modify entity @s CustomName set value '{"text":"[ᴸᵛᴸ¹⁴]"}'
#execute if score @s entitylvl matches 15 run data modify entity @s CustomName set value '{"text":"[ᴸᵛᴸ¹⁵]"}'
execute at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ oak_sign{Text1:'{"nbt":"CustomName","entity":"electross24"}'} 
#execute at @e[tag=GenesisArmorstand,type=armor_stand] run setblock ~ ~-1 ~ minecraft:oak_sign{Text1:'[{"nbt":"CustomName","entity":"<selector for the chicken>"},{"text":"<text to be added>"}]'}
execute at @e[tag=GenesisArmorstand,type=armor_stand] run data modify entity @s CustomName set from block ~ ~-1 ~ Text1


tag @s add identified