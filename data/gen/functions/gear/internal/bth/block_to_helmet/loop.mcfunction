execute store result score #slot gen.temp run data get storage gen:gear Inventory[-1].Slot
item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 with air
execute if score #slot gen.temp matches 0 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s hotbar.0
execute if score #slot gen.temp matches 1 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s hotbar.1 
execute if score #slot gen.temp matches 2 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s hotbar.2 
execute if score #slot gen.temp matches 3 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s hotbar.3 
execute if score #slot gen.temp matches 4 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s hotbar.4 
execute if score #slot gen.temp matches 5 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s hotbar.5 
execute if score #slot gen.temp matches 6 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s hotbar.6 
execute if score #slot gen.temp matches 7 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s hotbar.7 
execute if score #slot gen.temp matches 8 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s hotbar.8 
execute if score #slot gen.temp matches 9 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s inventory.0
execute if score #slot gen.temp matches 10 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s inventory.1
execute if score #slot gen.temp matches 11 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s inventory.2
execute if score #slot gen.temp matches 12 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s inventory.3
execute if score #slot gen.temp matches 13 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s inventory.4
execute if score #slot gen.temp matches 14 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s inventory.5
execute if score #slot gen.temp matches 15 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s inventory.6
execute if score #slot gen.temp matches 16 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s inventory.7
execute if score #slot gen.temp matches 17 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s inventory.8
execute if score #slot gen.temp matches 18 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s inventory.9
execute if score #slot gen.temp matches 19 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s inventory.10
execute if score #slot gen.temp matches 20 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s inventory.11
execute if score #slot gen.temp matches 21 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s inventory.12
execute if score #slot gen.temp matches 22 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s inventory.13
execute if score #slot gen.temp matches 23 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s inventory.14
execute if score #slot gen.temp matches 24 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s inventory.15
execute if score #slot gen.temp matches 25 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s inventory.16
execute if score #slot gen.temp matches 26 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s inventory.17
execute if score #slot gen.temp matches 27 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s inventory.18
execute if score #slot gen.temp matches 28 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s inventory.19
execute if score #slot gen.temp matches 29 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s inventory.20
execute if score #slot gen.temp matches 30 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s inventory.21
execute if score #slot gen.temp matches 31 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s inventory.22
execute if score #slot gen.temp matches 32 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s inventory.23
execute if score #slot gen.temp matches 33 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s inventory.24
execute if score #slot gen.temp matches 34 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s inventory.25
execute if score #slot gen.temp matches 35 run item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 from entity @s inventory.26
function gen:gear/internal/bth/block_to_helmet/turn
data remove storage gen:gear Inventory[-1]
execute if data storage gen:gear Inventory[0] run function gen:gear/internal/bth/block_to_helmet/loop