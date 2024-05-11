
#execute as @e[type=item,nbt={Item:{id:"minecraft:phantom_membrane",Count:1b}}] at @s run function gen:professions/mineralogy/internal/crystalarium/crystalariumitem
execute as @a if score @s gen.mined_amethyst matches 1.. at @s as @e[tag=gen.professions.mineralogy.crystalarium,distance=..6] at @s unless block ~ ~ ~ amethyst_block run function gen:professions/mineralogy/internal/crystalarium/destroycrystalarium
execute as @a if score @s gen.mined_amethyst matches 1.. run scoreboard players reset @s gen.mined_amethyst

execute as @a if score @s gen.profession.mineralogy.broke_amethyst4 matches 1.. at @s as @e[tag=gen.professions.mineralogy.crystalarium,distance=..6] at @s run function gen:professions/mineralogy/internal/crystalarium/spawn_loot
execute as @a if score @s gen.profession.mineralogy.broke_amethyst3 matches 1.. at @s as @e[tag=gen.professions.mineralogy.crystalarium,distance=..6] at @s run function gen:professions/mineralogy/internal/crystalarium/spawn_loot
execute as @a if score @s gen.profession.mineralogy.broke_amethyst2 matches 1.. at @s as @e[tag=gen.professions.mineralogy.crystalarium,distance=..6] at @s run function gen:professions/mineralogy/internal/crystalarium/spawn_loot
execute as @a if score @s gen.profession.mineralogy.broke_amethyst1 matches 1.. at @s as @e[tag=gen.professions.mineralogy.crystalarium,distance=..6] at @s run function gen:professions/mineralogy/internal/crystalarium/spawn_loot

execute as @a if score @s gen.profession.mineralogy.broke_amethyst4 matches 1.. run scoreboard players reset @s gen.profession.mineralogy.broke_amethyst4
execute as @a if score @s gen.profession.mineralogy.broke_amethyst3 matches 1.. run scoreboard players reset @s gen.profession.mineralogy.broke_amethyst3
execute as @a if score @s gen.profession.mineralogy.broke_amethyst2 matches 1.. run scoreboard players reset @s gen.profession.mineralogy.broke_amethyst2
execute as @a if score @s gen.profession.mineralogy.broke_amethyst1 matches 1.. run scoreboard players reset @s gen.profession.mineralogy.broke_amethyst1