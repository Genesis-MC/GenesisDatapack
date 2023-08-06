scoreboard players operation #search gen.bossbars.id = @s gen.bossbars.id
tag @s add gen.bossbars.local
function gen:bossbars/internal/players/remove
tag @a remove gen.bossbars.player
execute if entity @s[tag=gen.bossbars.local_16] run tag @a[distance=..16] add gen.bossbars.player
execute if entity @s[tag=gen.bossbars.local_32] run tag @a[distance=..32] add gen.bossbars.player
execute if entity @s[tag=gen.bossbars.local_64] run tag @a[distance=..64] add gen.bossbars.player
execute if entity @s[tag=gen.bossbars.local_128] run tag @a[distance=..128] add gen.bossbars.player
execute if score #search gen.bossbars.id matches 0..7 run function gen:bossbars/internal/players/local/0-7
execute if score #search gen.bossbars.id matches 8..15 run function gen:bossbars/internal/players/local/8-15
execute if score #search gen.bossbars.id matches 16..23 run function gen:bossbars/internal/players/local/16-23
execute if score #search gen.bossbars.id matches 24..31 run function gen:bossbars/internal/players/local/24-31
