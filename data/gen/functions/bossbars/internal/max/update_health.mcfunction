tag @s add gen.bossbars.healthbar
execute store result score #bossbars.max gen.temp run attribute @s generic.max_health get
function gen:bossbars/internal/max/root