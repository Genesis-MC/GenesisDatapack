scoreboard players operation #search gen.bossbars.id = @s gen.bossbars.id
execute store result score #bossbars.value gen.temp run data get entity @s Health
execute if score #search gen.bossbars.id matches 0..7 run function gen:bossbars/internal/value/0-7
execute if score #search gen.bossbars.id matches 8..15 run function gen:bossbars/internal/value/8-15
execute if score #search gen.bossbars.id matches 16..23 run function gen:bossbars/internal/value/16-23
execute if score #search gen.bossbars.id matches 24..31 run function gen:bossbars/internal/value/24-31
