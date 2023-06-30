tag @s add gen.bossbars.show
execute if score #global gen.bossbars.id >= #max gen.bossbars.id run scoreboard players set #global gen.bossbars.id 0
scoreboard players set #taken gen.bossbars.id 0
scoreboard players set #find gen.bossbars.id 0

scoreboard players operation #search gen.bossbars.id = #global gen.bossbars.id
scoreboard players operation @s gen.bossbars.id = #global gen.bossbars.id
tag @s add .
execute as @e[tag=!.] if score @s gen.bossbars.id = #search gen.bossbars.id run scoreboard players set #taken gen.bossbars.id 1
execute if score #taken gen.bossbars.id matches 1 run tellraw @p "taken"
execute if score #taken gen.bossbars.id matches 1 run function gen:bossbars/internal/find_id
tag @s remove .
scoreboard players add #global gen.bossbars.id 1