data modify entity 0001e4dd-0000-ca49-0002-425300000000 item set from entity 0001e4dd-0000-ca49-0002-425300000000 item.tag.HelmetData.Original

execute store result score #helmet_damage gen.temp run data get entity 0001e4dd-0000-ca49-0002-425300000000 item.tag.HelmetData.Damage
execute store result score #max_damage gen.temp run data get entity 0001e4dd-0000-ca49-0002-425300000000 item.tag.HelmetData.MaxDamage
execute if score #max_damage gen.temp matches 0 run scoreboard players set #max_damage gen.temp 363

scoreboard players operation #helmet_damage gen.temp *= #363 gen.const
scoreboard players operation #helmet_damage gen.temp /= #max_damage gen.temp 
scoreboard players remove #helmet_damage gen.temp 363
scoreboard players operation #helmet_damage gen.temp *= #-1 gen.const
item modify entity 0001e4dd-0000-ca49-0002-425300000000 container.0 gen:gear/bth/set_damage

execute if score #slot gen.temp matches 0 run item replace entity @s hotbar.0 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0
execute if score #slot gen.temp matches 1 run item replace entity @s hotbar.1 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0 
execute if score #slot gen.temp matches 2 run item replace entity @s hotbar.2 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0 
execute if score #slot gen.temp matches 3 run item replace entity @s hotbar.3 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0 
execute if score #slot gen.temp matches 4 run item replace entity @s hotbar.4 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0 
execute if score #slot gen.temp matches 5 run item replace entity @s hotbar.5 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0 
execute if score #slot gen.temp matches 6 run item replace entity @s hotbar.6 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0 
execute if score #slot gen.temp matches 7 run item replace entity @s hotbar.7 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0 
execute if score #slot gen.temp matches 8 run item replace entity @s hotbar.8 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0 
execute if score #slot gen.temp matches 9 run item replace entity @s inventory.0 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0
execute if score #slot gen.temp matches 10 run item replace entity @s inventory.1 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0
execute if score #slot gen.temp matches 11 run item replace entity @s inventory.2 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0
execute if score #slot gen.temp matches 12 run item replace entity @s inventory.3 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0
execute if score #slot gen.temp matches 13 run item replace entity @s inventory.4 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0
execute if score #slot gen.temp matches 14 run item replace entity @s inventory.5 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0
execute if score #slot gen.temp matches 15 run item replace entity @s inventory.6 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0
execute if score #slot gen.temp matches 16 run item replace entity @s inventory.7 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0
execute if score #slot gen.temp matches 17 run item replace entity @s inventory.8 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0
execute if score #slot gen.temp matches 18 run item replace entity @s inventory.9 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0
execute if score #slot gen.temp matches 19 run item replace entity @s inventory.10 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0
execute if score #slot gen.temp matches 20 run item replace entity @s inventory.11 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0
execute if score #slot gen.temp matches 21 run item replace entity @s inventory.12 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0
execute if score #slot gen.temp matches 22 run item replace entity @s inventory.13 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0
execute if score #slot gen.temp matches 23 run item replace entity @s inventory.14 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0
execute if score #slot gen.temp matches 24 run item replace entity @s inventory.15 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0
execute if score #slot gen.temp matches 25 run item replace entity @s inventory.16 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0
execute if score #slot gen.temp matches 26 run item replace entity @s inventory.17 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0
execute if score #slot gen.temp matches 27 run item replace entity @s inventory.18 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0
execute if score #slot gen.temp matches 28 run item replace entity @s inventory.19 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0
execute if score #slot gen.temp matches 29 run item replace entity @s inventory.20 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0
execute if score #slot gen.temp matches 30 run item replace entity @s inventory.21 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0
execute if score #slot gen.temp matches 31 run item replace entity @s inventory.22 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0
execute if score #slot gen.temp matches 32 run item replace entity @s inventory.23 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0
execute if score #slot gen.temp matches 33 run item replace entity @s inventory.24 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0
execute if score #slot gen.temp matches 34 run item replace entity @s inventory.25 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0
execute if score #slot gen.temp matches 35 run item replace entity @s inventory.26 from entity 0001e4dd-0000-ca49-0002-425300000000 container.0
