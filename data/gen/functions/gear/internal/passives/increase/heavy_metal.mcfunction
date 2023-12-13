scoreboard players operation @s gen.stat.knockback_resistance -= @s gen.passive.heavy_metal_statboost
#Knockback Resistance bonus -> gen.stat.armor * 0.5
scoreboard players set #mult gen.math 5
scoreboard players set #div gen.math 10
scoreboard players operation @s gen.passive.heavy_metal_statboost = @s gen.stat.armor
scoreboard players operation @s gen.passive.heavy_metal_statboost *= #mult gen.math
scoreboard players operation @s gen.passive.heavy_metal_statboost /= #div gen.math

scoreboard players operation @s gen.stat.knockback_resistance += @s gen.passive.heavy_metal_statboost
function gen:gear/data/stat/update/knockback_resistance
function gen:menu/internal/amulet/update_lore
tag @s add gen.passive.heavy_metal