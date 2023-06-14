function gen:gear/data/stat/remove/health
execute unless score #last_health gen.math matches 0 if score @s gen.stat.health matches 0 run damage @s 0.00000000000000000000000000000001
execute if score @s gen.stat.health matches 0 run return -1

scoreboard players operation #stat gen.math = @s gen.stat.health
# this sets a hard cap, any stat above this is redundant (in this case because any health above 1024 doesn't work anymore, so no need)
execute if score #stat gen.math matches 10241.. run scoreboard players set #stat gen.math 10240
execute if score #stat gen.math matches 8192.. run attribute @s generic.max_health modifier add f03767ae-ce7a-41ca-1-8192 "gen.stat.health.8192" 819.2 add
execute if score #stat gen.math matches 8192.. run scoreboard players remove #stat gen.math 8192
execute if score #stat gen.math matches 4096.. run attribute @s generic.max_health modifier add f03767ae-ce7a-41ca-1-4096 "gen.stat.health.4096" 409.6 add
execute if score #stat gen.math matches 4096.. run scoreboard players remove #stat gen.math 4096
execute if score #stat gen.math matches 2048.. run attribute @s generic.max_health modifier add f03767ae-ce7a-41ca-1-2048 "gen.stat.health.2048" 204.8 add
execute if score #stat gen.math matches 2048.. run scoreboard players remove #stat gen.math 2048
execute if score #stat gen.math matches 1024.. run attribute @s generic.max_health modifier add f03767ae-ce7a-41ca-1-1024 "gen.stat.health.1024" 102.4 add
execute if score #stat gen.math matches 1024.. run scoreboard players remove #stat gen.math 1024
execute if score #stat gen.math matches 512.. run attribute @s generic.max_health modifier add f03767ae-ce7a-41ca-1-512 "gen.stat.health.512" 51.2 add
execute if score #stat gen.math matches 512.. run scoreboard players remove #stat gen.math 512
execute if score #stat gen.math matches 256.. run attribute @s generic.max_health modifier add f03767ae-ce7a-41ca-1-256 "gen.stat.health.256" 25.6 add
execute if score #stat gen.math matches 256.. run scoreboard players remove #stat gen.math 256
execute if score #stat gen.math matches 128.. run attribute @s generic.max_health modifier add f03767ae-ce7a-41ca-1-128 "gen.stat.health.128" 12.8 add
execute if score #stat gen.math matches 128.. run scoreboard players remove #stat gen.math 128
execute if score #stat gen.math matches 64.. run attribute @s generic.max_health modifier add f03767ae-ce7a-41ca-1-64 "gen.stat.health.64" 6.4 add
execute if score #stat gen.math matches 64.. run scoreboard players remove #stat gen.math 64
execute if score #stat gen.math matches 32.. run attribute @s generic.max_health modifier add f03767ae-ce7a-41ca-1-32 "gen.stat.health.32" 3.2 add
execute if score #stat gen.math matches 32.. run scoreboard players remove #stat gen.math 32
execute if score #stat gen.math matches 16.. run attribute @s generic.max_health modifier add f03767ae-ce7a-41ca-1-16 "gen.stat.health.16" 1.6 add
execute if score #stat gen.math matches 16.. run scoreboard players remove #stat gen.math 16
execute if score #stat gen.math matches 8.. run attribute @s generic.max_health modifier add f03767ae-ce7a-41ca-1-8 "gen.stat.health.8" 0.8 add
execute if score #stat gen.math matches 8.. run scoreboard players remove #stat gen.math 8
execute if score #stat gen.math matches 4.. run attribute @s generic.max_health modifier add f03767ae-ce7a-41ca-1-4 "gen.stat.health.4" 0.4 add
execute if score #stat gen.math matches 4.. run scoreboard players remove #stat gen.math 4
execute if score #stat gen.math matches 2.. run attribute @s generic.max_health modifier add f03767ae-ce7a-41ca-1-2 "gen.stat.health.2" 0.2 add
execute if score #stat gen.math matches 2.. run scoreboard players remove #stat gen.math 2
execute if score #stat gen.math matches 1.. run attribute @s generic.max_health modifier add f03767ae-ce7a-41ca-1-1 "gen.stat.health.1" 0.1 add
# damage for 0 to get rid of "fake" hearts
damage @s 0.00000000000000000000000000000001
