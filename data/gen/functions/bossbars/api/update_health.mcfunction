execute store result storage gen:bossbars max int 1 run attribute @s generic.max_health get 10
execute store result storage gen:bossbars value int 1 run data get entity @s Health 10
tag @s add gen.bossbars.healthbar
function gen:bossbars/api/set_max
function gen:bossbars/api/set_value