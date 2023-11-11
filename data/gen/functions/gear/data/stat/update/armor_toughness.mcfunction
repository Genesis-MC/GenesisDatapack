function gen:gear/data/stat/remove/armor_toughness
execute if score @s gen.stat.armor_toughness matches 0 run return -1

scoreboard players operation #stat gen.math = @s gen.stat.armor_toughness
execute if score #stat gen.math matches 201.. run scoreboard players set #stat gen.math 200

execute if score #stat gen.math matches 128.. run attribute @s generic.armor_toughness modifier add f03767ae-ce7a-41ca-6-128 "gen.stat.armor_toughness.128" 12.8 add
execute if score #stat gen.math matches 128.. run scoreboard players remove #stat gen.math 128
execute if score #stat gen.math matches 64.. run attribute @s generic.armor_toughness modifier add f03767ae-ce7a-41ca-6-64 "gen.stat.armor_toughness.64" 6.4 add
execute if score #stat gen.math matches 64.. run scoreboard players remove #stat gen.math 64
execute if score #stat gen.math matches 32.. run attribute @s generic.armor_toughness modifier add f03767ae-ce7a-41ca-6-32 "gen.stat.armor_toughness.32" 3.2 add
execute if score #stat gen.math matches 32.. run scoreboard players remove #stat gen.math 32
execute if score #stat gen.math matches 16.. run attribute @s generic.armor_toughness modifier add f03767ae-ce7a-41ca-6-16 "gen.stat.armor_toughness.16" 1.6 add
execute if score #stat gen.math matches 16.. run scoreboard players remove #stat gen.math 16
execute if score #stat gen.math matches 8.. run attribute @s generic.armor_toughness modifier add f03767ae-ce7a-41ca-6-8 "gen.stat.armor_toughness.8" 0.8 add
execute if score #stat gen.math matches 8.. run scoreboard players remove #stat gen.math 8
execute if score #stat gen.math matches 4.. run attribute @s generic.armor_toughness modifier add f03767ae-ce7a-41ca-6-4 "gen.stat.armor_toughness.4" 0.4 add
execute if score #stat gen.math matches 4.. run scoreboard players remove #stat gen.math 4
execute if score #stat gen.math matches 2.. run attribute @s generic.armor_toughness modifier add f03767ae-ce7a-41ca-6-2 "gen.stat.armor_toughness.2" 0.2 add
execute if score #stat gen.math matches 2.. run scoreboard players remove #stat gen.math 2
execute if score #stat gen.math matches 1.. run attribute @s generic.armor_toughness modifier add f03767ae-ce7a-41ca-6-1 "gen.stat.armor_toughness.1" 0.1 add

execute if score #stat gen.math matches ..-128 run attribute @s generic.armor_toughness modifier add f03767ae-ce7a-41ca-6-b128 "gen.stat.armor_toughness.-128" -12.8 add
execute if score #stat gen.math matches ..-128 run scoreboard players add #stat gen.math 128
execute if score #stat gen.math matches ..-64 run attribute @s generic.armor_toughness modifier add f03767ae-ce7a-41ca-6-b64 "gen.stat.armor_toughness.-64" -6.4 add
execute if score #stat gen.math matches ..-64 run scoreboard players add #stat gen.math 64
execute if score #stat gen.math matches ..-32 run attribute @s generic.armor_toughness modifier add f03767ae-ce7a-41ca-6-b32 "gen.stat.armor_toughness.-32" -3.2 add
execute if score #stat gen.math matches ..-32 run scoreboard players add #stat gen.math 32
execute if score #stat gen.math matches ..-16 run attribute @s generic.armor_toughness modifier add f03767ae-ce7a-41ca-6-b16 "gen.stat.armor_toughness.-16" -1.6 add
execute if score #stat gen.math matches ..-16 run scoreboard players add #stat gen.math 16
execute if score #stat gen.math matches ..-8 run attribute @s generic.armor_toughness modifier add f03767ae-ce7a-41ca-6-b8 "gen.stat.armor_toughness.-8" -0.8 add
execute if score #stat gen.math matches ..-8 run scoreboard players add #stat gen.math 8
execute if score #stat gen.math matches ..-4 run attribute @s generic.armor_toughness modifier add f03767ae-ce7a-41ca-6-b4 "gen.stat.armor_toughness.-4" -0.4 add
execute if score #stat gen.math matches ..-4 run scoreboard players add #stat gen.math 4
execute if score #stat gen.math matches ..-2 run attribute @s generic.armor_toughness modifier add f03767ae-ce7a-41ca-6-b2 "gen.stat.armor_toughness.-2" -0.2 add
execute if score #stat gen.math matches ..-2 run scoreboard players add #stat gen.math 2
execute if score #stat gen.math matches ..-1 run attribute @s generic.armor_toughness modifier add f03767ae-ce7a-41ca-6-b1 "gen.stat.armor_toughness.-1" -0.1 add
