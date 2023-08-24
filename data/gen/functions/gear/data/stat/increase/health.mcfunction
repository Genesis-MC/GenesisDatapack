# $(val) where val is an integer representing the stat increase
## This function should ONLY be executed if the entity DOES NOT have the gen.stat_increase.health tag
## execute if entity @s[tag=!gen.stat_increase.health]
$scoreboard players add @s gen.stat.health $(val)
function gen:gear/data/stat/swap/chest
tag @s add gen.stat_increase.health