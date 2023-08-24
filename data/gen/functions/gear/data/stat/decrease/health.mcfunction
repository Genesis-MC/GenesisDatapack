# $(val) where val is an integer representing the stat decrease
## This function should ONLY be executed if the entity DOES have the gen.stat_increase.health tag
## execute if entity @s[tag=gen.stat_increase.health]
$scoreboard players remove @s gen.stat.health $(increase)
function gen:gear/data/stat/swap/chest
tag @s remove gen.stat_increase.health