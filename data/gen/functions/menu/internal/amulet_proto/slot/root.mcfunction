scoreboard players set @s gen.menu.amulet.subpage -1
scoreboard players set @s gen.menu.amulet.page 0
data modify storage genesis:temp temp set value []
data modify storage genesis:temp temp prepend from entity @s Inventory[{tag:{gen:{amulet:1b}}}]
execute store result score #slot gen.temp run data get storage genesis:temp temp[0].Slot
execute if data storage genesis:temp temp[0] run function gen:menu/data/amulet/lore

execute if score #slot gen.temp matches -106 run item modify entity @s weapon.offhand gen:menu/amulet_lore
execute if score #slot gen.temp matches 0 run item modify entity @s hotbar.0 gen:menu/amulet_lore
execute if score #slot gen.temp matches 1 run item modify entity @s hotbar.1 gen:menu/amulet_lore
execute if score #slot gen.temp matches 2 run item modify entity @s hotbar.2 gen:menu/amulet_lore
execute if score #slot gen.temp matches 3 run item modify entity @s hotbar.3 gen:menu/amulet_lore
execute if score #slot gen.temp matches 4 run item modify entity @s hotbar.4 gen:menu/amulet_lore
execute if score #slot gen.temp matches 5 run item modify entity @s hotbar.5 gen:menu/amulet_lore
execute if score #slot gen.temp matches 6 run item modify entity @s hotbar.6 gen:menu/amulet_lore
execute if score #slot gen.temp matches 7 run item modify entity @s hotbar.7 gen:menu/amulet_lore
execute if score #slot gen.temp matches 8 run item modify entity @s hotbar.8 gen:menu/amulet_lore
execute if score #slot gen.temp matches 9 run item modify entity @s inventory.0 gen:menu/amulet_lore
execute if score #slot gen.temp matches 10 run item modify entity @s inventory.1 gen:menu/amulet_lore
execute if score #slot gen.temp matches 11 run item modify entity @s inventory.2 gen:menu/amulet_lore
execute if score #slot gen.temp matches 12 run item modify entity @s inventory.3 gen:menu/amulet_lore
execute if score #slot gen.temp matches 13 run item modify entity @s inventory.4 gen:menu/amulet_lore
execute if score #slot gen.temp matches 14 run item modify entity @s inventory.5 gen:menu/amulet_lore
execute if score #slot gen.temp matches 15 run item modify entity @s inventory.6 gen:menu/amulet_lore
execute if score #slot gen.temp matches 16 run item modify entity @s inventory.7 gen:menu/amulet_lore
execute if score #slot gen.temp matches 17 run item modify entity @s inventory.8 gen:menu/amulet_lore
execute if score #slot gen.temp matches 18 run item modify entity @s inventory.9 gen:menu/amulet_lore
execute if score #slot gen.temp matches 19 run item modify entity @s inventory.10 gen:menu/amulet_lore
execute if score #slot gen.temp matches 20 run item modify entity @s inventory.11 gen:menu/amulet_lore
execute if score #slot gen.temp matches 21 run item modify entity @s inventory.12 gen:menu/amulet_lore
execute if score #slot gen.temp matches 22 run item modify entity @s inventory.13 gen:menu/amulet_lore
execute if score #slot gen.temp matches 23 run item modify entity @s inventory.14 gen:menu/amulet_lore
execute if score #slot gen.temp matches 24 run item modify entity @s inventory.15 gen:menu/amulet_lore
execute if score #slot gen.temp matches 25 run item modify entity @s inventory.16 gen:menu/amulet_lore
execute if score #slot gen.temp matches 26 run item modify entity @s inventory.17 gen:menu/amulet_lore
execute if score #slot gen.temp matches 27 run item modify entity @s inventory.18 gen:menu/amulet_lore
execute if score #slot gen.temp matches 28 run item modify entity @s inventory.19 gen:menu/amulet_lore
execute if score #slot gen.temp matches 29 run item modify entity @s inventory.20 gen:menu/amulet_lore
execute if score #slot gen.temp matches 30 run item modify entity @s inventory.21 gen:menu/amulet_lore
execute if score #slot gen.temp matches 31 run item modify entity @s inventory.22 gen:menu/amulet_lore
execute if score #slot gen.temp matches 32 run item modify entity @s inventory.23 gen:menu/amulet_lore
execute if score #slot gen.temp matches 33 run item modify entity @s inventory.24 gen:menu/amulet_lore
execute if score #slot gen.temp matches 34 run item modify entity @s inventory.25 gen:menu/amulet_lore
execute if score #slot gen.temp matches 35 run item modify entity @s inventory.26 gen:menu/amulet_lore
