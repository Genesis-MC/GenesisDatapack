kill @s
execute on origin store result score #temp gen.temp run data get entity @s SelectedItemSlot
execute if score #temp gen.temp matches 0 on origin run item replace entity @s hotbar.0 with minecraft:warped_fungus_on_a_stick{gen:{amulet:1b}} 1
execute if score #temp gen.temp matches 1 on origin run item replace entity @s hotbar.1 with minecraft:warped_fungus_on_a_stick{gen:{amulet:1b}} 1
execute if score #temp gen.temp matches 2 on origin run item replace entity @s hotbar.2 with minecraft:warped_fungus_on_a_stick{gen:{amulet:1b}} 1
execute if score #temp gen.temp matches 3 on origin run item replace entity @s hotbar.3 with minecraft:warped_fungus_on_a_stick{gen:{amulet:1b}} 1
execute if score #temp gen.temp matches 4 on origin run item replace entity @s hotbar.4 with minecraft:warped_fungus_on_a_stick{gen:{amulet:1b}} 1
execute if score #temp gen.temp matches 5 on origin run item replace entity @s hotbar.5 with minecraft:warped_fungus_on_a_stick{gen:{amulet:1b}} 1
execute if score #temp gen.temp matches 6 on origin run item replace entity @s hotbar.6 with minecraft:warped_fungus_on_a_stick{gen:{amulet:1b}} 1
execute if score #temp gen.temp matches 7 on origin run item replace entity @s hotbar.7 with minecraft:warped_fungus_on_a_stick{gen:{amulet:1b}} 1
execute if score #temp gen.temp matches 8 on origin run item replace entity @s hotbar.8 with minecraft:warped_fungus_on_a_stick{gen:{amulet:1b}} 1
execute on origin run function gen:menu/internal/amulet/slot/root
execute on origin run function gen:menu/data/amulet/pages/index