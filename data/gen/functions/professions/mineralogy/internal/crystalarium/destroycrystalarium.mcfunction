#Checks if crystalarium's amethyst block was destroyed; If so, destroys the crystalarium
execute at @s positioned ~-.1 ~ ~-.1 run kill @e[type=block_display,limit=2,sort=nearest]
execute positioned ~ ~1 ~ run kill @e[distance=..1,limit=1,sort=nearest,type=item,nbt={Item:{id:"minecraft:amethyst_shard"}},nbt=!{Item:{tag:{gen:{mineral:1b}}}}]

loot spawn ~ ~ ~ loot gen:professions/mineralogy/crystal_node
execute if entity @s[tag=Tier5] run loot spawn ~ ~ ~ loot gen:professions/mineralogy/crystalarium/return_ecrystals_tier5
execute if entity @s[tag=Tier4] run loot spawn ~ ~ ~ loot gen:professions/mineralogy/crystalarium/return_ecrystals_tier4
execute if entity @s[tag=Tier3] run loot spawn ~ ~ ~ loot gen:professions/mineralogy/crystalarium/return_ecrystals_tier3
execute if entity @s[tag=Tier2] run loot spawn ~ ~ ~ loot gen:professions/mineralogy/crystalarium/return_ecrystals_tier2
execute at @s run kill @s