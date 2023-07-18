
data modify storage had.bth:main Items set value [] 
data modify storage had.bth:main Items append from entity @s Inventory[{tag:{isBlockHelmet:1b}}]
data remove storage had.bth:main Items[{Slot:103b}] 
execute store result score #Damage had.temp run data get storage had.bth:main Items[0].tag.HelmetData.Original.tag.HelmetData.Damage
execute store result score #maxDamage had.temp run data get storage had.bth:main Items[0].tag.HelmetData.Original.tag.HelmetData.MaxDamage

scoreboard players operation #Damage had.temp *= #363 had.const
scoreboard players operation #Damage had.temp /= #maxDamage had.temp
scoreboard players remove #Damage had.temp 363
scoreboard players operation #Damage had.temp *= #-1 had.const
execute unless data storage had.bth:main Items[0].tag.HelmetData.Original.id run data modify storage had.bth:main Items[0].tag.HelmetData.Original.id set value "minecraft:diamond_helmet"
execute in minecraft:overworld run data modify entity 000005fb-0000-016e-0000-055300012265 item set from storage had.bth:main Items[0].tag.HelmetData.Original
execute in minecraft:overworld run item modify entity 000005fb-0000-016e-0000-055300012265 container.0 had.bth:set_damage 

execute store result score #slot had.temp run data get storage had.bth:main Items[0].Slot
execute unless data storage had.bth:main Items[0] run return -1
execute if score #slot had.temp matches 0 in minecraft:overworld run item replace entity @s hotbar.0 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 1 in minecraft:overworld run item replace entity @s hotbar.1 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 2 in minecraft:overworld run item replace entity @s hotbar.2 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 3 in minecraft:overworld run item replace entity @s hotbar.3 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 4 in minecraft:overworld run item replace entity @s hotbar.4 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 5 in minecraft:overworld run item replace entity @s hotbar.5 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 6 in minecraft:overworld run item replace entity @s hotbar.6 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 7 in minecraft:overworld run item replace entity @s hotbar.7 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 8 in minecraft:overworld run item replace entity @s hotbar.8 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 9 in minecraft:overworld run item replace entity @s inventory.0 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 10 in minecraft:overworld run item replace entity @s inventory.1 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 11 in minecraft:overworld run item replace entity @s inventory.2 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 12 in minecraft:overworld run item replace entity @s inventory.3 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 13 in minecraft:overworld run item replace entity @s inventory.4 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 14 in minecraft:overworld run item replace entity @s inventory.5 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 15 in minecraft:overworld run item replace entity @s inventory.6 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 16 in minecraft:overworld run item replace entity @s inventory.7 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 17 in minecraft:overworld run item replace entity @s inventory.8 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 18 in minecraft:overworld run item replace entity @s inventory.9 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 19 in minecraft:overworld run item replace entity @s inventory.10 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 20 in minecraft:overworld run item replace entity @s inventory.11 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 21 in minecraft:overworld run item replace entity @s inventory.12 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 22 in minecraft:overworld run item replace entity @s inventory.13 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 23 in minecraft:overworld run item replace entity @s inventory.14 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 24 in minecraft:overworld run item replace entity @s inventory.15 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 25 in minecraft:overworld run item replace entity @s inventory.16 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 26 in minecraft:overworld run item replace entity @s inventory.17 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 27 in minecraft:overworld run item replace entity @s inventory.18 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 28 in minecraft:overworld run item replace entity @s inventory.19 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 29 in minecraft:overworld run item replace entity @s inventory.20 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 30 in minecraft:overworld run item replace entity @s inventory.21 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 31 in minecraft:overworld run item replace entity @s inventory.22 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 32 in minecraft:overworld run item replace entity @s inventory.23 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 33 in minecraft:overworld run item replace entity @s inventory.24 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 34 in minecraft:overworld run item replace entity @s inventory.25 from entity 000005fb-0000-016e-0000-055300012265 container.0
execute if score #slot had.temp matches 35 in minecraft:overworld run item replace entity @s inventory.26 from entity 000005fb-0000-016e-0000-055300012265 container.0