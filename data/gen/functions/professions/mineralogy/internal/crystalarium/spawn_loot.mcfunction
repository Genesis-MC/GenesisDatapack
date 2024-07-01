#Runs for every crystalarium in a 6 block radius of a player who mined an amethyst cluster
execute positioned ~ ~1 ~ run kill @e[distance=..1,limit=1,sort=nearest,type=item,nbt={Item:{id:"minecraft:amethyst_shard"}},nbt=!{Item:{tag:{gen:{mineral:1b}}}}]
execute positioned ~ ~1 ~ run kill @e[distance=..1,limit=1,sort=nearest,type=item,nbt={Item:{id:"minecraft:amethyst_cluster"}}]

execute if block ~ ~1 ~ #amethyst_cluster_variant run return 0
execute if score @s gen.profession.mineralogy.growth_level < @s gen.profession.mineralogy.growth_req run return 0
#Reset growth level
execute unless block ~ ~1 ~ #amethyst_cluster_variant run scoreboard players set @s gen.profession.mineralogy.growth_level 0

#Spawns loot depending on Tier
execute if entity @s[tag=normCrystalarium,tag=Tier1] run loot spawn ~ ~1 ~ loot gen:professions/mineralogy/crystalarium/tier1
execute if entity @s[tag=normCrystalarium,tag=Tier2] run loot spawn ~ ~1 ~ loot gen:professions/mineralogy/crystalarium/tier2
execute if entity @s[tag=normCrystalarium,tag=Tier3] run loot spawn ~ ~1 ~ loot gen:professions/mineralogy/crystalarium/tier3
execute if entity @s[tag=normCrystalarium,tag=Tier4] run loot spawn ~ ~1 ~ loot gen:professions/mineralogy/crystalarium/tier4
execute if entity @s[tag=normCrystalarium,tag=Tier5] run loot spawn ~ ~1 ~ loot gen:professions/mineralogy/crystalarium/tier5
execute if entity @s[tag=normCrystalarium] run return 0

#Pure Crystalarium
execute store result score #mineral_cluster_purity gen.temp run loot spawn ~ ~ ~ loot gen:randomizers/random50
execute if entity @s[tag=Tier2] run scoreboard players add #mineral_cluster_purity gen.temp 10
execute if entity @s[tag=Tier3] run scoreboard players add #mineral_cluster_purity gen.temp 20
execute if entity @s[tag=Tier4] run scoreboard players add #mineral_cluster_purity gen.temp 40
execute if entity @s[tag=Tier5] run scoreboard players add #mineral_cluster_purity gen.temp 50

execute if score #mineral_cluster_purity gen.temp matches 0..9 run loot spawn ~ ~1 ~ loot gen:treasure/mineral_clusters/mineral_cluster1
execute if score #mineral_cluster_purity gen.temp matches 10..19 run loot spawn ~ ~1 ~ loot gen:treasure/mineral_clusters/mineral_cluster2
execute if score #mineral_cluster_purity gen.temp matches 20..29 run loot spawn ~ ~1 ~ loot gen:treasure/mineral_clusters/mineral_cluster3
execute if score #mineral_cluster_purity gen.temp matches 30..39 run loot spawn ~ ~1 ~ loot gen:treasure/mineral_clusters/mineral_cluster4
execute if score #mineral_cluster_purity gen.temp matches 40..49 run loot spawn ~ ~1 ~ loot gen:treasure/mineral_clusters/mineral_cluster5
execute if score #mineral_cluster_purity gen.temp matches 50..59 run loot spawn ~ ~1 ~ loot gen:treasure/mineral_clusters/mineral_cluster6
execute if score #mineral_cluster_purity gen.temp matches 60..69 run loot spawn ~ ~1 ~ loot gen:treasure/mineral_clusters/mineral_cluster7
execute if score #mineral_cluster_purity gen.temp matches 70..79 run loot spawn ~ ~1 ~ loot gen:treasure/mineral_clusters/mineral_cluster8
execute if score #mineral_cluster_purity gen.temp matches 80..89 run loot spawn ~ ~1 ~ loot gen:treasure/mineral_clusters/mineral_cluster9
execute if score #mineral_cluster_purity gen.temp matches 90..99 run loot spawn ~ ~1 ~ loot gen:treasure/mineral_clusters/mineral_cluster10
execute if score #mineral_cluster_purity gen.temp matches 100.. run loot spawn ~ ~1 ~ loot gen:treasure/mineral_clusters/mineral_cluster11