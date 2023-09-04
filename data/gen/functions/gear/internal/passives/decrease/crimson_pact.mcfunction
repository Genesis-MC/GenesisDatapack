# $(val) where val is an integer representing the stat decrease
$scoreboard players remove @s gen.stat.physical_power $(val)
function gen:gear/data/stat/update/physical_power
tag @s remove gen.passive.crimson_pact