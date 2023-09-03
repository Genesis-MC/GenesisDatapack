
scoreboard players operation @s gen.stat.ability_haste -= @s gen.passive.time_dilation_statboost
scoreboard players set @s gen.passive.time_dilation_statboost 0
function gen:gear/data/stat/swap/mainhand
tag @s remove gen.passive.time_dilation