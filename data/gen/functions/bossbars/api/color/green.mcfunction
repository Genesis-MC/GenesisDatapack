scoreboard players operation #search gen.bossbars.id = @s gen.bossbars.id
tag @s remove gen.bossbars.green
execute if score #search gen.bossbars.id matches 0..7 run function gen:bossbars/internal/color/green/0-7
execute if score #search gen.bossbars.id matches 8..15 run function gen:bossbars/internal/color/green/8-15
execute if score #search gen.bossbars.id matches 16..23 run function gen:bossbars/internal/color/green/16-23
execute if score #search gen.bossbars.id matches 24..31 run function gen:bossbars/internal/color/green/24-31