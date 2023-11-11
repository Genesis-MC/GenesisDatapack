function gen:gear/data/stat/remove/knockback_resistance
execute if score @s gen.stat.knockback_resistance matches 0 run return -1

# calculate knockback_resistance from stat
# x/(100+x)
scoreboard players set #denominator gen.math 100
scoreboard players operation #denominator gen.math += @s gen.stat.knockback_resistance
scoreboard players operation #stat gen.math = @s gen.stat.knockback_resistance
scoreboard players operation #stat gen.math *= #20000 gen.const
execute store result score #temp gen.math run scoreboard players operation #stat gen.math /= #denominator gen.math
scoreboard players operation #stat gen.math /= #2 gen.const
scoreboard players operation #temp gen.math %= #2 gen.const
scoreboard players operation #stat gen.math += #temp gen.math

execute if score #stat gen.math matches 8192.. run attribute @s generic.knockback_resistance modifier add f03767ae-ce7a-41ca-7-8192 "gen.stat.knockback_resistance.8192" 0.8192 add
execute if score #stat gen.math matches 8192.. run scoreboard players remove #stat gen.math 8192
execute if score #stat gen.math matches 4096.. run attribute @s generic.knockback_resistance modifier add f03767ae-ce7a-41ca-7-4096 "gen.stat.knockback_resistance.4096" 0.4096 add
execute if score #stat gen.math matches 4096.. run scoreboard players remove #stat gen.math 4096
execute if score #stat gen.math matches 2048.. run attribute @s generic.knockback_resistance modifier add f03767ae-ce7a-41ca-7-2048 "gen.stat.knockback_resistance.2048" 0.2048 add
execute if score #stat gen.math matches 2048.. run scoreboard players remove #stat gen.math 2048
execute if score #stat gen.math matches 1024.. run attribute @s generic.knockback_resistance modifier add f03767ae-ce7a-41ca-7-1024 "gen.stat.knockback_resistance.1024" 0.1024 add
execute if score #stat gen.math matches 1024.. run scoreboard players remove #stat gen.math 1024
execute if score #stat gen.math matches 512.. run attribute @s generic.knockback_resistance modifier add f03767ae-ce7a-41ca-7-512 "gen.stat.knockback_resistance.512" 0.0512 add
execute if score #stat gen.math matches 512.. run scoreboard players remove #stat gen.math 512
execute if score #stat gen.math matches 256.. run attribute @s generic.knockback_resistance modifier add f03767ae-ce7a-41ca-7-256 "gen.stat.knockback_resistance.256" 0.0256 add
execute if score #stat gen.math matches 256.. run scoreboard players remove #stat gen.math 256
execute if score #stat gen.math matches 128.. run attribute @s generic.knockback_resistance modifier add f03767ae-ce7a-41ca-7-128 "gen.stat.knockback_resistance.128" 0.0128 add
execute if score #stat gen.math matches 128.. run scoreboard players remove #stat gen.math 128
execute if score #stat gen.math matches 64.. run attribute @s generic.knockback_resistance modifier add f03767ae-ce7a-41ca-7-64 "gen.stat.knockback_resistance.64" 0.0064 add
execute if score #stat gen.math matches 64.. run scoreboard players remove #stat gen.math 64
execute if score #stat gen.math matches 32.. run attribute @s generic.knockback_resistance modifier add f03767ae-ce7a-41ca-7-32 "gen.stat.knockback_resistance.32" 0.0032 add
execute if score #stat gen.math matches 32.. run scoreboard players remove #stat gen.math 32
execute if score #stat gen.math matches 16.. run attribute @s generic.knockback_resistance modifier add f03767ae-ce7a-41ca-7-16 "gen.stat.knockback_resistance.16" 0.0016 add
execute if score #stat gen.math matches 16.. run scoreboard players remove #stat gen.math 16
execute if score #stat gen.math matches 8.. run attribute @s generic.knockback_resistance modifier add f03767ae-ce7a-41ca-7-8 "gen.stat.knockback_resistance.8" 0.0008 add
execute if score #stat gen.math matches 8.. run scoreboard players remove #stat gen.math 8
execute if score #stat gen.math matches 4.. run attribute @s generic.knockback_resistance modifier add f03767ae-ce7a-41ca-7-4 "gen.stat.knockback_resistance.4" 0.0004 add
execute if score #stat gen.math matches 4.. run scoreboard players remove #stat gen.math 4
execute if score #stat gen.math matches 2.. run attribute @s generic.knockback_resistance modifier add f03767ae-ce7a-41ca-7-2 "gen.stat.knockback_resistance.2" 0.0002 add
execute if score #stat gen.math matches 2.. run scoreboard players remove #stat gen.math 2
execute if score #stat gen.math matches 1.. run attribute @s generic.knockback_resistance modifier add f03767ae-ce7a-41ca-7-1 "gen.stat.knockback_resistance.1" 0.0001 add

execute if score #stat gen.math matches ..-8192 run attribute @s generic.knockback_resistance modifier add f03767ae-ce7a-41ca-7-b8192 "gen.stat.knockback_resistance.-8192" -0.8192 add
execute if score #stat gen.math matches ..-8192 run scoreboard players add #stat gen.math 8192
execute if score #stat gen.math matches ..-4096 run attribute @s generic.knockback_resistance modifier add f03767ae-ce7a-41ca-7-b4096 "gen.stat.knockback_resistance.-4096" -0.4096 add
execute if score #stat gen.math matches ..-4096 run scoreboard players add #stat gen.math 4096
execute if score #stat gen.math matches ..-2048 run attribute @s generic.knockback_resistance modifier add f03767ae-ce7a-41ca-7-b2048 "gen.stat.knockback_resistance.-2048" -0.2048 add
execute if score #stat gen.math matches ..-2048 run scoreboard players add #stat gen.math 2048
execute if score #stat gen.math matches ..-1024 run attribute @s generic.knockback_resistance modifier add f03767ae-ce7a-41ca-7-b1024 "gen.stat.knockback_resistance.-1024" -0.1024 add
execute if score #stat gen.math matches ..-1024 run scoreboard players add #stat gen.math 1024
execute if score #stat gen.math matches ..-512 run attribute @s generic.knockback_resistance modifier add f03767ae-ce7a-41ca-7-b512 "gen.stat.knockback_resistance.-512" -0.0512 add
execute if score #stat gen.math matches ..-512 run scoreboard players add #stat gen.math 512
execute if score #stat gen.math matches ..-256 run attribute @s generic.knockback_resistance modifier add f03767ae-ce7a-41ca-7-b256 "gen.stat.knockback_resistance.-256" -0.0256 add
execute if score #stat gen.math matches ..-256 run scoreboard players add #stat gen.math 256
execute if score #stat gen.math matches ..-128 run attribute @s generic.knockback_resistance modifier add f03767ae-ce7a-41ca-7-b128 "gen.stat.knockback_resistance.-128" -0.0128 add
execute if score #stat gen.math matches ..-128 run scoreboard players add #stat gen.math 128
execute if score #stat gen.math matches ..-64 run attribute @s generic.knockback_resistance modifier add f03767ae-ce7a-41ca-7-b64 "gen.stat.knockback_resistance.-64" -0.0064 add
execute if score #stat gen.math matches ..-64 run scoreboard players add #stat gen.math 64
execute if score #stat gen.math matches ..-32 run attribute @s generic.knockback_resistance modifier add f03767ae-ce7a-41ca-7-b32 "gen.stat.knockback_resistance.-32" -0.0032 add
execute if score #stat gen.math matches ..-32 run scoreboard players add #stat gen.math 32
execute if score #stat gen.math matches ..-16 run attribute @s generic.knockback_resistance modifier add f03767ae-ce7a-41ca-7-b16 "gen.stat.knockback_resistance.-16" -0.0016 add
execute if score #stat gen.math matches ..-16 run scoreboard players add #stat gen.math 16
execute if score #stat gen.math matches ..-8 run attribute @s generic.knockback_resistance modifier add f03767ae-ce7a-41ca-7-b8 "gen.stat.knockback_resistance.-8" -0.0008 add
execute if score #stat gen.math matches ..-8 run scoreboard players add #stat gen.math 8
execute if score #stat gen.math matches ..-4 run attribute @s generic.knockback_resistance modifier add f03767ae-ce7a-41ca-7-b4 "gen.stat.knockback_resistance.-4" -0.0004 add
execute if score #stat gen.math matches ..-4 run scoreboard players add #stat gen.math 4
execute if score #stat gen.math matches ..-2 run attribute @s generic.knockback_resistance modifier add f03767ae-ce7a-41ca-7-b2 "gen.stat.knockback_resistance.-2" -0.0002 add
execute if score #stat gen.math matches ..-2 run scoreboard players add #stat gen.math 2
execute if score #stat gen.math matches ..-1 run attribute @s generic.knockback_resistance modifier add f03767ae-ce7a-41ca-7-b1 "gen.stat.knockback_resistance.-1" -0.0001 add
