# $(val) where val is an integer representing the stat increase
$scoreboard players add @s gen.stat.speed $(val)
function gen:gear/data/stat/update/speed
tag @s add gen.passive.frenzy