function gen:gear/data/stat/remove/armor
execute if score @s gen.stat.armor matches 0 run return -1

scoreboard players operation #stat gen.math = @s gen.stat.armor
execute if score #stat gen.math matches 301.. run scoreboard players set #stat gen.math 300

execute if score #stat gen.math matches 256.. run attribute @s generic.armor modifier add f03767ae-ce7a-41ca-5-256 "gen.stat.armor.256" 25.6 add
execute if score #stat gen.math matches 256.. run scoreboard players remove #stat gen.math 256
execute if score #stat gen.math matches 128.. run attribute @s generic.armor modifier add f03767ae-ce7a-41ca-5-128 "gen.stat.armor.128" 12.8 add
execute if score #stat gen.math matches 128.. run scoreboard players remove #stat gen.math 128
execute if score #stat gen.math matches 64.. run attribute @s generic.armor modifier add f03767ae-ce7a-41ca-5-64 "gen.stat.armor.64" 6.4 add
execute if score #stat gen.math matches 64.. run scoreboard players remove #stat gen.math 64
execute if score #stat gen.math matches 32.. run attribute @s generic.armor modifier add f03767ae-ce7a-41ca-5-32 "gen.stat.armor.32" 3.2 add
execute if score #stat gen.math matches 32.. run scoreboard players remove #stat gen.math 32
execute if score #stat gen.math matches 16.. run attribute @s generic.armor modifier add f03767ae-ce7a-41ca-5-16 "gen.stat.armor.16" 1.6 add
execute if score #stat gen.math matches 16.. run scoreboard players remove #stat gen.math 16
execute if score #stat gen.math matches 8.. run attribute @s generic.armor modifier add f03767ae-ce7a-41ca-5-8 "gen.stat.armor.8" 0.8 add
execute if score #stat gen.math matches 8.. run scoreboard players remove #stat gen.math 8
execute if score #stat gen.math matches 4.. run attribute @s generic.armor modifier add f03767ae-ce7a-41ca-5-4 "gen.stat.armor.4" 0.4 add
execute if score #stat gen.math matches 4.. run scoreboard players remove #stat gen.math 4
execute if score #stat gen.math matches 2.. run attribute @s generic.armor modifier add f03767ae-ce7a-41ca-5-2 "gen.stat.armor.2" 0.2 add
execute if score #stat gen.math matches 2.. run scoreboard players remove #stat gen.math 2
execute if score #stat gen.math matches 1.. run attribute @s generic.armor modifier add f03767ae-ce7a-41ca-5-1 "gen.stat.armor.1" 0.1 add
execute if score #stat gen.math matches 1.. run scoreboard players remove #stat gen.math 1
