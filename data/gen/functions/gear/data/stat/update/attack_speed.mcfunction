function gen:gear/data/stat/remove/attack_speed
execute if score @s gen.stat.attack_speed matches 0 run return -1

# calculate attack_speed from stat
# (20*x)/(1000+x)
scoreboard players set #denominator gen.math 1000
scoreboard players operation #denominator gen.math += @s gen.stat.attack_speed
scoreboard players operation #denominator gen.math -= @s gen.stat.attack_speed.offhand
scoreboard players operation #stat gen.math = @s gen.stat.attack_speed
scoreboard players operation #stat gen.math -= @s gen.stat.attack_speed.offhand
scoreboard players operation #stat gen.math *= #4000 gen.const
execute store result score #temp gen.math run scoreboard players operation #stat gen.math /= #denominator gen.math
scoreboard players operation #stat gen.math /= #2 gen.const
scoreboard players operation #temp gen.math %= #2 gen.const
scoreboard players operation #stat gen.math += #temp gen.math

# remove 4 base attack speed if mainhand weapon is custom to have attributes start at 0 but make it still work for vanilla and other weapons
execute unless score @s gen.stat.attack_speed.mainhand matches 0 run attribute @s generic.attack_speed modifier add f03767ae-ce7a-41ca-2-bace "gen.stat.attack_speed.base" -4 add
execute if score #stat gen.math matches 1024.. run attribute @s generic.attack_speed modifier add f03767ae-ce7a-41ca-2-1024 "gen.stat.attack_speed.1024" 10.24 add
execute if score #stat gen.math matches 1024.. run scoreboard players remove #stat gen.math 1024
execute if score #stat gen.math matches 512.. run attribute @s generic.attack_speed modifier add f03767ae-ce7a-41ca-2-512 "gen.stat.attack_speed.512" 5.12 add
execute if score #stat gen.math matches 512.. run scoreboard players remove #stat gen.math 512
execute if score #stat gen.math matches 256.. run attribute @s generic.attack_speed modifier add f03767ae-ce7a-41ca-2-256 "gen.stat.attack_speed.256" 2.56 add
execute if score #stat gen.math matches 256.. run scoreboard players remove #stat gen.math 256
execute if score #stat gen.math matches 128.. run attribute @s generic.attack_speed modifier add f03767ae-ce7a-41ca-2-128 "gen.stat.attack_speed.128" 1.28 add
execute if score #stat gen.math matches 128.. run scoreboard players remove #stat gen.math 128
execute if score #stat gen.math matches 64.. run attribute @s generic.attack_speed modifier add f03767ae-ce7a-41ca-2-64 "gen.stat.attack_speed.64" 0.64 add
execute if score #stat gen.math matches 64.. run scoreboard players remove #stat gen.math 64
execute if score #stat gen.math matches 32.. run attribute @s generic.attack_speed modifier add f03767ae-ce7a-41ca-2-32 "gen.stat.attack_speed.32" 0.32 add
execute if score #stat gen.math matches 32.. run scoreboard players remove #stat gen.math 32
execute if score #stat gen.math matches 16.. run attribute @s generic.attack_speed modifier add f03767ae-ce7a-41ca-2-16 "gen.stat.attack_speed.16" 0.16 add
execute if score #stat gen.math matches 16.. run scoreboard players remove #stat gen.math 16
execute if score #stat gen.math matches 8.. run attribute @s generic.attack_speed modifier add f03767ae-ce7a-41ca-2-8 "gen.stat.attack_speed.8" 0.08 add
execute if score #stat gen.math matches 8.. run scoreboard players remove #stat gen.math 8
execute if score #stat gen.math matches 4.. run attribute @s generic.attack_speed modifier add f03767ae-ce7a-41ca-2-4 "gen.stat.attack_speed.4" 0.04 add
execute if score #stat gen.math matches 4.. run scoreboard players remove #stat gen.math 4
execute if score #stat gen.math matches 2.. run attribute @s generic.attack_speed modifier add f03767ae-ce7a-41ca-2-2 "gen.stat.attack_speed.2" 0.02 add
execute if score #stat gen.math matches 2.. run scoreboard players remove #stat gen.math 2
execute if score #stat gen.math matches 1.. run attribute @s generic.attack_speed modifier add f03767ae-ce7a-41ca-2-1 "gen.stat.attack_speed.1" 0.01 add
