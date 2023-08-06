scoreboard players operation #search gen.bossbars.id = @s gen.bossbars.id
execute if score #search gen.bossbars.id matches 0..7 run function gen:bossbars/internal/visible/true/0-7
execute if score #search gen.bossbars.id matches 8..15 run function gen:bossbars/internal/visible/true/8-15
execute if score #search gen.bossbars.id matches 16..23 run function gen:bossbars/internal/visible/true/16-23
execute if score #search gen.bossbars.id matches 24..31 run function gen:bossbars/internal/visible/true/24-31
