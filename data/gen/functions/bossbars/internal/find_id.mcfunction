scoreboard players set #taken gen.bossbars.id 0
execute as @e[tag=!this] if score @s gen.bossbars.id = #find gen.bossbars.id run scoreboard players set #taken gen.bossbars.id 1
execute if score #taken gen.bossbars.id matches 0 run scoreboard players operation @s gen.bossbars.id = #find gen.bossbars.id

execute if score #find gen.bossbars.id >= #max gen.bossbars.id run scoreboard players set @s gen.bossbars.id -1
scoreboard players add #find gen.bossbars.id 1
execute unless score @s gen.bossbars.id matches -1 if score #taken gen.bossbars.id matches 1 run function gen:bossbars/internal/find_id