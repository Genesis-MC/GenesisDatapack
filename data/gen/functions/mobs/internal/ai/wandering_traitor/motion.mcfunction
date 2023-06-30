execute store result storage temp motion[0] double 0.001 run scoreboard players get #x gen.temp
execute store result storage temp motion[1] double 0.001 run scoreboard players get #y gen.temp
execute store result storage temp motion[2] double 0.001 run scoreboard players get #z gen.temp
data modify entity @s Motion set from storage temp motion