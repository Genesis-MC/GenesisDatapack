execute if score #slot gen.temp matches -1 run return 0
execute if score #slot gen.temp matches 0 run item modify entity @s hotbar.0 gen:merge_nbt
execute if score #slot gen.temp matches 1 run item modify entity @s hotbar.1 gen:merge_nbt
