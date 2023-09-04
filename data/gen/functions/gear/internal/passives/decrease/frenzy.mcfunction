# $(val) where val is an integer representing the stat decrease
$scoreboard players remove @s gen.stat.speed $(val)
function gen:gear/data/stat/update/speed
tag @s remove gen.passive.frenzy