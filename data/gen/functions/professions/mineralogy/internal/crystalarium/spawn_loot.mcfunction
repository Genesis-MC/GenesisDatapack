#Runs for every crystalarium in a 6 block radius of a player who mined an amethyst cluster
execute positioned ~ ~1 ~ run kill @e[distance=..1,limit=1,sort=nearest,type=item,nbt={Item:{id:"minecraft:amethyst_shard"}},nbt=!{Item:{tag:{gen:{mineral:1b}}}}]
#Spawns loot depending on Tier
execute if score @s gen.profession.mineralogy.growth_level matches 4 unless block ~ ~1 ~ #amethyst_cluster_variant if entity @s[tag=Tier1] positioned ~ ~1 ~ run loot spawn ~ ~ ~ loot gen:professions/mineralogy/crystalarium/tier1
execute if score @s gen.profession.mineralogy.growth_level matches 4 unless block ~ ~1 ~ #amethyst_cluster_variant if entity @s[tag=Tier2] positioned ~ ~1 ~ run loot spawn ~ ~ ~ loot gen:professions/mineralogy/crystalarium/tier2
execute if score @s gen.profession.mineralogy.growth_level matches 4 unless block ~ ~1 ~ #amethyst_cluster_variant if entity @s[tag=Tier3] positioned ~ ~1 ~ run loot spawn ~ ~ ~ loot gen:professions/mineralogy/crystalarium/tier3
execute if score @s gen.profession.mineralogy.growth_level matches 4 unless block ~ ~1 ~ #amethyst_cluster_variant if entity @s[tag=Tier4] positioned ~ ~1 ~ run loot spawn ~ ~ ~ loot gen:professions/mineralogy/crystalarium/tier4
execute if score @s gen.profession.mineralogy.growth_level matches 4 unless block ~ ~1 ~ #amethyst_cluster_variant if entity @s[tag=Tier5] positioned ~ ~1 ~ run loot spawn ~ ~ ~ loot gen:professions/mineralogy/crystalarium/tier5

#Reset growth level
execute if score @s gen.profession.mineralogy.growth_level matches 4 unless block ~ ~1 ~ #amethyst_cluster_variant run scoreboard players set @s gen.profession.mineralogy.growth_level 0