# // scoreboard players operation @s gen.mobs.level += @p gen.mobs.level

tag @s add this

scoreboard players operation @s gen.biome = @e[tag=!this,distance=..4,limit=1,type=#gen:alive_no_player,scores={gen.biome=-2147483648..}] gen.biome
scoreboard players operation @s gen.biome_difficulty = @e[tag=!this,distance=..4,limit=1,type=#gen:alive_no_player,scores={gen.biome=-2147483648..}] gen.biome_difficulty

execute unless score @s gen.biome matches -2147483648..2147483647 run function gen:mobs/data/biomes/root

tag @s remove this
#Mob levels will be determined by Biome Difficulty, World Level, Player Level, and an additional Randomizer. The mob's base level will be World Level + Player Level, and then the value will be skewed depending on the biome and its difficulty:
#B : L   P
#1 : -5 -20%
#2 : -4 -15%
#3 : -2 -10%
#4 : -1 -5%
#5 : 0
#6 : +3 +3%
#7 : +5 +5%
#8 : +7 +10%
#9 : +9 +14%
#10 : +10 +18%
#(Ex: Lets say I have a Player Level of 5 and the current World Level is 3, which is the default. A #mob spawns next to me in a plains biome, which is a difficulty 1 biome. The mob's base level would #be 5+3=8. Since we are in a difficulty 1 biome, the level would be skewed by -5 and -20%, which is 8-(0.2 x 8)-5 = 1.4 ~ 1) 
# calls a function so we can return early and more readable
function gen:mobs/internal/calc/biome_difficulty_scaling/root_number
function gen:mobs/internal/calc/biome_difficulty_scaling/root_percentage
# diff = difficulty

#tellraw @p ["world diff v ",{"score":{"name": "#biome_diff","objective": "gen.temp"},"color":"red"}]
#tellraw @p ["world diff % ",{"score":{"name": "#biome_diff_percentage","objective": "gen.temp"},"color":"yellow"}]

#Adding world level 
scoreboard players set #player_lvl_and_world gen.temp 0
#tellraw @p ["lv land world ",{"score":{"name": "#player_lvl_and_world","objective": "gen.temp"},"color":"gold"}]
scoreboard players operation #player_lvl_and_world gen.temp += .level gen.world
scoreboard players operation #player_lvl_and_world gen.temp += @p gen.mobs.level
#tellraw @p ["Player & World Level ",{"score":{"name": "#player_lvl_and_world","objective": "gen.temp"},"color":"yellow"}]

scoreboard players operation #cplayer_lvl_and_world gen.temp = #player_lvl_and_world gen.temp 

scoreboard players operation #cplayer_lvl_and_world gen.temp *= #biome_diff_percentage gen.temp
scoreboard players operation #cplayer_lvl_and_world gen.temp /= #100 gen.const 

scoreboard players operation #player_lvl_and_world gen.temp += #cplayer_lvl_and_world gen.temp
scoreboard players operation #player_lvl_and_world gen.temp += #biome_diff gen.temp

#tellraw @p ["Biome Percentage ",{"score":{"name": "#cplayer_lvl_and_world","objective": "gen.temp"},"color":"light_purple"}]
#tellraw @p ["Biome Bonus ",{"score":{"name": "#biome_diff","objective": "gen.temp"},"color":"light_purple"}]
#tellraw @p {"score":{"name": "#player_lvl_and_world","objective": "gen.temp"},"color":"red"}
scoreboard players operation @s gen.mobs.level = #player_lvl_and_world gen.temp
# making sure it is not negative
scoreboard players set @s[scores={gen.mobs.level=..0}] gen.mobs.level 1
# make it do the spawning algorithm
tag @s[tag=!gen.mobs.spawn_egg] add gen.try_spawn