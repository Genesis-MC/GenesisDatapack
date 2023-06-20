function gen:gear/data/stat/remove/luck
execute if score @s gen.stat.luck matches 0 run return -1

scoreboard players operation #stat gen.math = @s gen.stat.luck
execute if score #stat gen.math matches 10241.. run scoreboard players set #stat gen.math 10240

execute if score #stat gen.math matches 8192.. run attribute @s generic.luck modifier add f03767ae-ce7a-41ca-8-8192 "gen.stat.luck.8192" 819.2 add
execute if score #stat gen.math matches 8192.. run scoreboard players remove #stat gen.math 8192
execute if score #stat gen.math matches 4096.. run attribute @s generic.luck modifier add f03767ae-ce7a-41ca-8-4096 "gen.stat.luck.4096" 409.6 add
execute if score #stat gen.math matches 4096.. run scoreboard players remove #stat gen.math 4096
execute if score #stat gen.math matches 2048.. run attribute @s generic.luck modifier add f03767ae-ce7a-41ca-8-2048 "gen.stat.luck.2048" 204.8 add
execute if score #stat gen.math matches 2048.. run scoreboard players remove #stat gen.math 2048
execute if score #stat gen.math matches 1024.. run attribute @s generic.luck modifier add f03767ae-ce7a-41ca-8-1024 "gen.stat.luck.1024" 102.4 add
execute if score #stat gen.math matches 1024.. run scoreboard players remove #stat gen.math 1024
execute if score #stat gen.math matches 512.. run attribute @s generic.luck modifier add f03767ae-ce7a-41ca-8-512 "gen.stat.luck.512" 51.2 add
execute if score #stat gen.math matches 512.. run scoreboard players remove #stat gen.math 512
execute if score #stat gen.math matches 256.. run attribute @s generic.luck modifier add f03767ae-ce7a-41ca-8-256 "gen.stat.luck.256" 25.6 add
execute if score #stat gen.math matches 256.. run scoreboard players remove #stat gen.math 256
execute if score #stat gen.math matches 128.. run attribute @s generic.luck modifier add f03767ae-ce7a-41ca-8-128 "gen.stat.luck.128" 12.8 add
execute if score #stat gen.math matches 128.. run scoreboard players remove #stat gen.math 128
execute if score #stat gen.math matches 64.. run attribute @s generic.luck modifier add f03767ae-ce7a-41ca-8-64 "gen.stat.luck.64" 6.4 add
execute if score #stat gen.math matches 64.. run scoreboard players remove #stat gen.math 64
execute if score #stat gen.math matches 32.. run attribute @s generic.luck modifier add f03767ae-ce7a-41ca-8-32 "gen.stat.luck.32" 3.2 add
execute if score #stat gen.math matches 32.. run scoreboard players remove #stat gen.math 32
execute if score #stat gen.math matches 16.. run attribute @s generic.luck modifier add f03767ae-ce7a-41ca-8-16 "gen.stat.luck.16" 1.6 add
execute if score #stat gen.math matches 16.. run scoreboard players remove #stat gen.math 16
execute if score #stat gen.math matches 8.. run attribute @s generic.luck modifier add f03767ae-ce7a-41ca-8-8 "gen.stat.luck.8" 0.8 add
execute if score #stat gen.math matches 8.. run scoreboard players remove #stat gen.math 8
execute if score #stat gen.math matches 4.. run attribute @s generic.luck modifier add f03767ae-ce7a-41ca-8-4 "gen.stat.luck.4" 0.4 add
execute if score #stat gen.math matches 4.. run scoreboard players remove #stat gen.math 4
execute if score #stat gen.math matches 2.. run attribute @s generic.luck modifier add f03767ae-ce7a-41ca-8-2 "gen.stat.luck.2" 0.2 add
execute if score #stat gen.math matches 2.. run scoreboard players remove #stat gen.math 2
execute if score #stat gen.math matches 1.. run attribute @s generic.luck modifier add f03767ae-ce7a-41ca-8-1 "gen.stat.luck.1" 0.1 add
