# $(val) where val is an integer representing the stat increase
$scoreboard players add @s gen.stat.physical_power $(val)
function gen:gear/data/stat/update/physical_power
tag @s add gen.passive.crimson_pact