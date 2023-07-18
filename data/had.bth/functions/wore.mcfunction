execute in minecraft:overworld run item replace entity 000005fb-0000-016e-0000-055300012265 container.0 with air
execute in minecraft:overworld run item replace entity 000005fb-0000-016e-0000-055300012265 container.0 from entity @s armor.head
execute in minecraft:overworld as 000005fb-0000-016e-0000-055300012265 run data modify entity @s item.tag.HelmetData.Original set from entity @s item
execute in minecraft:overworld as 000005fb-0000-016e-0000-055300012265 run data modify entity @s item merge from entity @s item.tag.HelmetData
execute in minecraft:overworld as 000005fb-0000-016e-0000-055300012265 unless data entity @s item.tag.HelmetData.Original.id run data modify entity @s item.tag.HelmetData.Original.id set value "minecraft:diamond_helmet"
execute in minecraft:overworld as 000005fb-0000-016e-0000-055300012265 run data modify entity @s item.tag.isBlockHelmet set value 1b
execute in minecraft:overworld run item replace entity @s armor.head from entity 000005fb-0000-016e-0000-055300012265 container.0
advancement revoke @s only had.bth:wore