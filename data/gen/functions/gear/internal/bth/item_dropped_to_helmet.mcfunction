data modify entity @s Item set from entity @s Item.tag.HelmetData.Original

execute store result score #helmet_damage gen.temp run data get entity @s Item.tag.HelmetData.Damage
execute store result score #max_damage gen.temp run data get entity @s Item.tag.HelmetData.MaxDamage
execute if score #max_damage gen.temp matches 0 run scoreboard players set #max_damage gen.temp 363
scoreboard players operation #helmet_damage gen.temp *= #363 gen.const
scoreboard players operation #helmet_damage gen.temp /= #max_damage gen.temp 
scoreboard players remove #helmet_damage gen.temp 363
scoreboard players operation #helmet_damage gen.temp *= #-1 gen.const
execute store result entity @s Item.tag.Damage int 0.0027548209366391 run scoreboard players get #helmet_damage gen.temp