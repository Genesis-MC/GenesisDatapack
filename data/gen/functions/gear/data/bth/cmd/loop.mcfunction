function gen:gear/data/bth/cmd/ids
execute if data storage gen:gear Inventory[{Slot:0b}] run data modify storage gen:gear Inventory[{Slot:0b}].Slot set value -1b
execute store result score #slot gen.temp run data get storage gen:gear Inventory[-1].Slot
execute if score #slot gen.temp matches -1 run item modify entity @s hotbar.0 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 1 run item modify entity @s hotbar.1 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 2 run item modify entity @s hotbar.2 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 3 run item modify entity @s hotbar.3 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 4 run item modify entity @s hotbar.4 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 5 run item modify entity @s hotbar.5 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 6 run item modify entity @s hotbar.6 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 7 run item modify entity @s hotbar.7 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 8 run item modify entity @s hotbar.8 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 9 run item modify entity @s inventory.0 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 10 run item modify entity @s inventory.1 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 11 run item modify entity @s inventory.2 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 12 run item modify entity @s inventory.3 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 13 run item modify entity @s inventory.4 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 14 run item modify entity @s inventory.5 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 15 run item modify entity @s inventory.6 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 16 run item modify entity @s inventory.7 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 17 run item modify entity @s inventory.8 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 18 run item modify entity @s inventory.9 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 19 run item modify entity @s inventory.10 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 20 run item modify entity @s inventory.11 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 21 run item modify entity @s inventory.12 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 22 run item modify entity @s inventory.13 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 23 run item modify entity @s inventory.14 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 24 run item modify entity @s inventory.15 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 25 run item modify entity @s inventory.16 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 26 run item modify entity @s inventory.17 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 27 run item modify entity @s inventory.18 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 28 run item modify entity @s inventory.19 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 29 run item modify entity @s inventory.20 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 30 run item modify entity @s inventory.21 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 31 run item modify entity @s inventory.22 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 32 run item modify entity @s inventory.23 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 33 run item modify entity @s inventory.24 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 34 run item modify entity @s inventory.25 gen:gear/bth/custom_model_data
execute if score #slot gen.temp matches 35 run item modify entity @s inventory.26 gen:gear/bth/custom_model_data
data remove storage gen:gear Inventory[-1]
execute if data storage gen:gear Inventory[0] run function gen:gear/data/bth/cmd/loop