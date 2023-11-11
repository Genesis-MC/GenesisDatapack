function gen:gear/data/stat/remove/physical_power
execute if score @s gen.stat.physical_power matches 0 run return -1

scoreboard players operation #stat gen.math = @s gen.stat.physical_power
scoreboard players operation #stat gen.math -= @s gen.stat.physical_power.offhand
execute if score #stat gen.math matches 20481.. run scoreboard players set #stat gen.math 20480

execute unless score @s gen.stat.physical_power.mainhand matches 0 run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-bace "gen.stat.physical_power.base" -1 add
execute if score #stat gen.math matches 16384.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-16384 "gen.stat.physical_power.16384" 1638.4 add
execute if score #stat gen.math matches 16384.. run scoreboard players remove #stat gen.math 16384
execute if score #stat gen.math matches 8192.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-8192 "gen.stat.physical_power.8192" 819.2 add
execute if score #stat gen.math matches 8192.. run scoreboard players remove #stat gen.math 8192
execute if score #stat gen.math matches 4096.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-4096 "gen.stat.physical_power.4096" 409.6 add
execute if score #stat gen.math matches 4096.. run scoreboard players remove #stat gen.math 4096
execute if score #stat gen.math matches 2048.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-2048 "gen.stat.physical_power.2048" 204.8 add
execute if score #stat gen.math matches 2048.. run scoreboard players remove #stat gen.math 2048
execute if score #stat gen.math matches 1024.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-1024 "gen.stat.physical_power.1024" 102.4 add
execute if score #stat gen.math matches 1024.. run scoreboard players remove #stat gen.math 1024
execute if score #stat gen.math matches 512.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-512 "gen.stat.physical_power.512" 51.2 add
execute if score #stat gen.math matches 512.. run scoreboard players remove #stat gen.math 512
execute if score #stat gen.math matches 256.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-256 "gen.stat.physical_power.256" 25.6 add
execute if score #stat gen.math matches 256.. run scoreboard players remove #stat gen.math 256
execute if score #stat gen.math matches 128.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-128 "gen.stat.physical_power.128" 12.8 add
execute if score #stat gen.math matches 128.. run scoreboard players remove #stat gen.math 128
execute if score #stat gen.math matches 64.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-64 "gen.stat.physical_power.64" 6.4 add
execute if score #stat gen.math matches 64.. run scoreboard players remove #stat gen.math 64
execute if score #stat gen.math matches 32.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-32 "gen.stat.physical_power.32" 3.2 add
execute if score #stat gen.math matches 32.. run scoreboard players remove #stat gen.math 32
execute if score #stat gen.math matches 16.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-16 "gen.stat.physical_power.16" 1.6 add
execute if score #stat gen.math matches 16.. run scoreboard players remove #stat gen.math 16
execute if score #stat gen.math matches 8.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-8 "gen.stat.physical_power.8" 0.8 add
execute if score #stat gen.math matches 8.. run scoreboard players remove #stat gen.math 8
execute if score #stat gen.math matches 4.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-4 "gen.stat.physical_power.4" 0.4 add
execute if score #stat gen.math matches 4.. run scoreboard players remove #stat gen.math 4
execute if score #stat gen.math matches 2.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-2 "gen.stat.physical_power.2" 0.2 add
execute if score #stat gen.math matches 2.. run scoreboard players remove #stat gen.math 2
execute if score #stat gen.math matches 1.. run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-1 "gen.stat.physical_power.1" 0.1 add

execute if score #stat gen.math matches ..-16384 run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-b16384 "gen.stat.physical_power.-16384" -1638.4 add
execute if score #stat gen.math matches ..-16384 run scoreboard players add #stat gen.math 16384
execute if score #stat gen.math matches ..-8192 run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-b8192 "gen.stat.physical_power.-8192" -819.2 add
execute if score #stat gen.math matches ..-8192 run scoreboard players add #stat gen.math 8192
execute if score #stat gen.math matches ..-4096 run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-b4096 "gen.stat.physical_power.-4096" -409.6 add
execute if score #stat gen.math matches ..-4096 run scoreboard players add #stat gen.math 4096
execute if score #stat gen.math matches ..-2048 run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-b2048 "gen.stat.physical_power.-2048" -204.8 add
execute if score #stat gen.math matches ..-2048 run scoreboard players add #stat gen.math 2048
execute if score #stat gen.math matches ..-1024 run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-b1024 "gen.stat.physical_power.-1024" -102.4 add
execute if score #stat gen.math matches ..-1024 run scoreboard players add #stat gen.math 1024
execute if score #stat gen.math matches ..-512 run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-b512 "gen.stat.physical_power.-512" -51.2 add
execute if score #stat gen.math matches ..-512 run scoreboard players add #stat gen.math 512
execute if score #stat gen.math matches ..-256 run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-b256 "gen.stat.physical_power.-256" -25.6 add
execute if score #stat gen.math matches ..-256 run scoreboard players add #stat gen.math 256
execute if score #stat gen.math matches ..-128 run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-b128 "gen.stat.physical_power.-128" -12.8 add
execute if score #stat gen.math matches ..-128 run scoreboard players add #stat gen.math 128
execute if score #stat gen.math matches ..-64 run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-b64 "gen.stat.physical_power.-64" -6.4 add
execute if score #stat gen.math matches ..-64 run scoreboard players add #stat gen.math 64
execute if score #stat gen.math matches ..-32 run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-b32 "gen.stat.physical_power.-32" -3.2 add
execute if score #stat gen.math matches ..-32 run scoreboard players add #stat gen.math 32
execute if score #stat gen.math matches ..-16 run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-b16 "gen.stat.physical_power.-16" -1.6 add
execute if score #stat gen.math matches ..-16 run scoreboard players add #stat gen.math 16
execute if score #stat gen.math matches ..-8 run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-b8 "gen.stat.physical_power.-8" -0.8 add
execute if score #stat gen.math matches ..-8 run scoreboard players add #stat gen.math 8
execute if score #stat gen.math matches ..-4 run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-b4 "gen.stat.physical_power.-4" -0.4 add
execute if score #stat gen.math matches ..-4 run scoreboard players add #stat gen.math 4
execute if score #stat gen.math matches ..-2 run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-b2 "gen.stat.physical_power.-2" -0.2 add
execute if score #stat gen.math matches ..-2 run scoreboard players add #stat gen.math 2
execute if score #stat gen.math matches ..-1 run attribute @s generic.attack_damage modifier add f03767ae-ce7a-41ca-3-b1 "gen.stat.physical_power.-1" -0.1 add
