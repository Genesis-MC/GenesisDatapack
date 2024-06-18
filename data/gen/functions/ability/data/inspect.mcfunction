
execute unless entity @e[distance=..4,tag=gen.professions.mineralogy.crystalarium] run return 0
scoreboard players operation #temp gen.temp = @e[tag=gen.professions.mineralogy.crystalarium,limit=1,sort=nearest] gen.profession.mineralogy.growth_level
scoreboard players operation #div gen.temp = @e[tag=gen.professions.mineralogy.crystalarium,limit=1,sort=nearest] gen.profession.mineralogy.growth_req
scoreboard players set #mult gen.math 100
scoreboard players operation #temp gen.temp *= #mult gen.math
scoreboard players operation #temp gen.temp /= #div gen.temp
tellraw @s ["",{"text":"Growth Level: ","color":"light_purple"},{"score":{"name":"#temp","objective":"gen.temp"},"color":"white"},{"text":"%","color":"white"}]