scoreboard players operation #search gen.bossbars.id = @s gen.bossbars.id
function gen:bossbars/internal/players/remove
execute if score #search gen.bossbars.id matches 0..7 run function gen:bossbars/internal/players/global/0-7
execute if score #search gen.bossbars.id matches 8..15 run function gen:bossbars/internal/players/global/8-15
execute if score #search gen.bossbars.id matches 16..23 run function gen:bossbars/internal/players/global/16-23
execute if score #search gen.bossbars.id matches 24..31 run function gen:bossbars/internal/players/global/24-31