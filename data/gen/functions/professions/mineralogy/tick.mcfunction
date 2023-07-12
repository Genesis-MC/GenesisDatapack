
execute as @a if score @s gen.mined_amethyst matches 1.. at @s as @e[tag=Crystalarium,distance=..6] run function gen:professions/mineralogy/internal/crystalarium/destroycrystalarium
scoreboard players reset @p gen.mined_amethyst
execute as @e[type=item,nbt={Item:{id:"minecraft:phantom_membrane",Count:1b}}] at @s run function gen:professions/mineralogy/internal/crystalarium/crystalariumitem
