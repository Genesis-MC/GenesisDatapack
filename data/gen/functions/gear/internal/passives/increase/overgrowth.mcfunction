
scoreboard players operation @s gen.stat.health -= @s gen.passive.overgrowth_statboost
#Health bonus -> gen.stat.health * 0.2
scoreboard players set #mult gen.math 2
scoreboard players set #div gen.math 10
scoreboard players set @s gen.passive.overgrowth_statboost 200
scoreboard players operation @s gen.passive.overgrowth_statboost += @s gen.stat.health
scoreboard players operation @s gen.passive.overgrowth_statboost *= #mult gen.math
scoreboard players operation @s gen.passive.overgrowth_statboost /= #div gen.math

scoreboard players operation @s gen.stat.health += @s gen.passive.overgrowth_statboost
function gen:gear/data/stat/update/health
function gen:menu/internal/amulet/update_lore
