function gen:gear/data/stat/remove/speed
execute if score @s gen.stat.speed matches 0 run return -1

scoreboard players operation #stat gen.math = @s gen.stat.speed
execute if score #stat gen.math matches 2097152.. run scoreboard players set #stat gen.math 2097151

execute if score #stat gen.math matches 1048576.. run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-1048576 "gen.stat.speed.1048576" 5242.88 multiply_base
execute if score #stat gen.math matches 1048576.. run scoreboard players remove #stat gen.math 1048576
execute if score #stat gen.math matches 524288.. run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-524288 "gen.stat.speed.524288" 2621.44 multiply_base
execute if score #stat gen.math matches 524288.. run scoreboard players remove #stat gen.math 524288
execute if score #stat gen.math matches 262144.. run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-262144 "gen.stat.speed.262144" 1310.72 multiply_base
execute if score #stat gen.math matches 262144.. run scoreboard players remove #stat gen.math 262144
execute if score #stat gen.math matches 131072.. run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-131072 "gen.stat.speed.131072" 655.36 multiply_base
execute if score #stat gen.math matches 131072.. run scoreboard players remove #stat gen.math 131072
execute if score #stat gen.math matches 65536.. run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-65536 "gen.stat.speed.65536" 327.68 multiply_base
execute if score #stat gen.math matches 65536.. run scoreboard players remove #stat gen.math 65536
execute if score #stat gen.math matches 32768.. run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-32768 "gen.stat.speed.32768" 163.84 multiply_base
execute if score #stat gen.math matches 32768.. run scoreboard players remove #stat gen.math 32768
execute if score #stat gen.math matches 16384.. run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-16384 "gen.stat.speed.16384" 81.92 multiply_base
execute if score #stat gen.math matches 16384.. run scoreboard players remove #stat gen.math 16384
execute if score #stat gen.math matches 8192.. run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-8192 "gen.stat.speed.8192" 40.96 multiply_base
execute if score #stat gen.math matches 8192.. run scoreboard players remove #stat gen.math 8192
execute if score #stat gen.math matches 4096.. run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-4096 "gen.stat.speed.4096" 20.48 multiply_base
execute if score #stat gen.math matches 4096.. run scoreboard players remove #stat gen.math 4096
execute if score #stat gen.math matches 2048.. run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-2048 "gen.stat.speed.2048" 10.24 multiply_base
execute if score #stat gen.math matches 2048.. run scoreboard players remove #stat gen.math 2048
execute if score #stat gen.math matches 1024.. run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-1024 "gen.stat.speed.1024" 5.12 multiply_base
execute if score #stat gen.math matches 1024.. run scoreboard players remove #stat gen.math 1024
execute if score #stat gen.math matches 512.. run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-512 "gen.stat.speed.512" 2.56 multiply_base
execute if score #stat gen.math matches 512.. run scoreboard players remove #stat gen.math 512
execute if score #stat gen.math matches 256.. run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-256 "gen.stat.speed.256" 1.28 multiply_base
execute if score #stat gen.math matches 256.. run scoreboard players remove #stat gen.math 256
execute if score #stat gen.math matches 128.. run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-128 "gen.stat.speed.128" 0.64 multiply_base
execute if score #stat gen.math matches 128.. run scoreboard players remove #stat gen.math 128
execute if score #stat gen.math matches 64.. run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-64 "gen.stat.speed.64" 0.32 multiply_base
execute if score #stat gen.math matches 64.. run scoreboard players remove #stat gen.math 64
execute if score #stat gen.math matches 32.. run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-32 "gen.stat.speed.32" 0.16 multiply_base
execute if score #stat gen.math matches 32.. run scoreboard players remove #stat gen.math 32
execute if score #stat gen.math matches 16.. run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-16 "gen.stat.speed.16" 0.08 multiply_base
execute if score #stat gen.math matches 16.. run scoreboard players remove #stat gen.math 16
execute if score #stat gen.math matches 8.. run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-8 "gen.stat.speed.8" 0.04 multiply_base
execute if score #stat gen.math matches 8.. run scoreboard players remove #stat gen.math 8
execute if score #stat gen.math matches 4.. run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-4 "gen.stat.speed.4" 0.02 multiply_base
execute if score #stat gen.math matches 4.. run scoreboard players remove #stat gen.math 4
execute if score #stat gen.math matches 2.. run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-2 "gen.stat.speed.2" 0.01 multiply_base
execute if score #stat gen.math matches 2.. run scoreboard players remove #stat gen.math 2
execute if score #stat gen.math matches 1.. run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-1 "gen.stat.speed.1" 0.005 multiply_base

execute if score #stat gen.math matches ..-1048576 run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-b1048576 "gen.stat.speed.-1048576" -5242.88 multiply_base
execute if score #stat gen.math matches ..-1048576 run scoreboard players add #stat gen.math 1048576
execute if score #stat gen.math matches ..-524288 run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-b524288 "gen.stat.speed.-524288" -2621.44 multiply_base
execute if score #stat gen.math matches ..-524288 run scoreboard players add #stat gen.math 524288
execute if score #stat gen.math matches ..-262144 run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-b262144 "gen.stat.speed.-262144" -1310.72 multiply_base
execute if score #stat gen.math matches ..-262144 run scoreboard players add #stat gen.math 262144
execute if score #stat gen.math matches ..-131072 run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-b131072 "gen.stat.speed.-131072" -655.36 multiply_base
execute if score #stat gen.math matches ..-131072 run scoreboard players add #stat gen.math 131072
execute if score #stat gen.math matches ..-65536 run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-b65536 "gen.stat.speed.-65536" -327.68 multiply_base
execute if score #stat gen.math matches ..-65536 run scoreboard players add #stat gen.math 65536
execute if score #stat gen.math matches ..-32768 run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-b32768 "gen.stat.speed.-32768" -163.84 multiply_base
execute if score #stat gen.math matches ..-32768 run scoreboard players add #stat gen.math 32768
execute if score #stat gen.math matches ..-16384 run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-b16384 "gen.stat.speed.-16384" -81.92 multiply_base
execute if score #stat gen.math matches ..-16384 run scoreboard players add #stat gen.math 16384
execute if score #stat gen.math matches ..-8192 run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-b8192 "gen.stat.speed.-8192" -40.96 multiply_base
execute if score #stat gen.math matches ..-8192 run scoreboard players add #stat gen.math 8192
execute if score #stat gen.math matches ..-4096 run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-b4096 "gen.stat.speed.-4096" -20.48 multiply_base
execute if score #stat gen.math matches ..-4096 run scoreboard players add #stat gen.math 4096
execute if score #stat gen.math matches ..-2048 run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-b2048 "gen.stat.speed.-2048" -10.24 multiply_base
execute if score #stat gen.math matches ..-2048 run scoreboard players add #stat gen.math 2048
execute if score #stat gen.math matches ..-1024 run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-b1024 "gen.stat.speed.-1024" -5.12 multiply_base
execute if score #stat gen.math matches ..-1024 run scoreboard players add #stat gen.math 1024
execute if score #stat gen.math matches ..-512 run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-b512 "gen.stat.speed.-512" -2.56 multiply_base
execute if score #stat gen.math matches ..-512 run scoreboard players add #stat gen.math 512
execute if score #stat gen.math matches ..-256 run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-b256 "gen.stat.speed.-256" -1.28 multiply_base
execute if score #stat gen.math matches ..-256 run scoreboard players add #stat gen.math 256
execute if score #stat gen.math matches ..-128 run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-b128 "gen.stat.speed.-128" -0.64 multiply_base
execute if score #stat gen.math matches ..-128 run scoreboard players add #stat gen.math 128
execute if score #stat gen.math matches ..-64 run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-b64 "gen.stat.speed.-64" -0.32 multiply_base
execute if score #stat gen.math matches ..-64 run scoreboard players add #stat gen.math 64
execute if score #stat gen.math matches ..-32 run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-b32 "gen.stat.speed.-32" -0.16 multiply_base
execute if score #stat gen.math matches ..-32 run scoreboard players add #stat gen.math 32
execute if score #stat gen.math matches ..-16 run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-b16 "gen.stat.speed.-16" -0.08 multiply_base
execute if score #stat gen.math matches ..-16 run scoreboard players add #stat gen.math 16
execute if score #stat gen.math matches ..-8 run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-b8 "gen.stat.speed.-8" -0.04 multiply_base
execute if score #stat gen.math matches ..-8 run scoreboard players add #stat gen.math 8
execute if score #stat gen.math matches ..-4 run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-b4 "gen.stat.speed.-4" -0.02 multiply_base
execute if score #stat gen.math matches ..-4 run scoreboard players add #stat gen.math 4
execute if score #stat gen.math matches ..-2 run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-b2 "gen.stat.speed.-2" -0.01 multiply_base
execute if score #stat gen.math matches ..-2 run scoreboard players add #stat gen.math 2
execute if score #stat gen.math matches ..-1 run attribute @s generic.movement_speed modifier add f03767ae-ce7a-41ca-4-b1 "gen.stat.speed.-1" -0.005 multiply_base
