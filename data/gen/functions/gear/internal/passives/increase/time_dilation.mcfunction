scoreboard players operation @s gen.stat.ability_haste -= @s gen.passive.time_dilation_statboost
#Ability haste bonus -> gen.stat.speed * 0.7
scoreboard players set #mult gen.math 7
scoreboard players set #div gen.math 10
scoreboard players operation @s gen.passive.time_dilation_statboost = @s gen.stat.speed
scoreboard players operation @s gen.passive.time_dilation_statboost *= #mult gen.math
scoreboard players operation @s gen.passive.time_dilation_statboost /= #div gen.math

scoreboard players operation @s gen.stat.ability_haste += @s gen.passive.time_dilation_statboost
function gen:gear/data/stat/swap/mainhand
tag @s add gen.passive.time_dilation