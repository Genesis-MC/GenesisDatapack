execute store success score #can_place gen.temp if block ^ ^ ^-1 #minecraft:fences

execute if score #can_place gen.temp matches 0 run tellraw @p {"text":"Must be placed in front of a fence."}
execute if score #can_place gen.temp matches 0 run kill @s
execute if score #can_place gen.temp matches 0 run return 0

execute if score #can_place gen.temp matches 1 positioned ^ ^ ^-1 align xyz run tp @s ~0.5 ~ ~0.5