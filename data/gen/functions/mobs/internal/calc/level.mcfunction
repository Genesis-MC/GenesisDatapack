scoreboard players operation @s gen.mobs.level += @p gen.mobs.level
tag @s add this
scoreboard players operation @s gen.biome = @e[tag=!this,distance=..4,limit=1,type=#gen:alive_no_player] gen.biome
execute unless score @s gen.biome matches -2147483648..2147483647 run function gen:mobs/data/biomes/root
tag @s remove this
#Adding Randomizer values
#Mob levels will be determined by Biome Difficulty, World Level, Player Level, and an additional Randomizer. The mob's base level will be World Level + Player Level, and then the value will be skewed depending on the biome and its difficulty:
#B : L   P
#1 : -5 -20%
#2 : -4 -15%
#3 : -2 -10%
#4 : -1 -5%
#5 : 0
#6 : +3 +5%
#7 : +5 +10%
#8 : +7 +15%
#9 : +9 +20%
#10 : +10 +25%
#(Ex: Lets say I have a Player Level of 5 and the current World Level is 3, which is the default. A #mob spawns next to me in a plains biome, which is a difficulty 1 biome. The mob's base level would #be 5+3=8. Since we are in a difficulty 1 biome, the level would be skewed by -5 and -20%, which is 8-(0.2 x 8)-5 = 1.4 ~ 1) 
# calls func so we can return early
function gen:mobs/internal/calc/biome_difficulty_scaling/root_number
function gen:mobs/internal/calc/biome_difficulty_scaling/root_percentage
#tellraw @p ["world diff v ",{"score":{"name": "#biome_diff","objective": "gen.temp"},"color":"red"}]
#tellraw @p ["world diff % ",{"score":{"name": "#biome_diff_percentage","objective": "gen.temp"},"color":"yellow"}]
execute if score #biome_diff_percentage gen.temp matches ..100 run scoreboard players operation #biome_diff_percentage gen.temp *= #-1 gen.const
execute if score #biome_diff_percentage gen.temp matches 101.. run scoreboard players remove #biome_diff_percentage gen.temp 100

#Adding world level 
scoreboard players set #player_lvl_and_world gen.temp 0
#tellraw @p ["lv land world ",{"score":{"name": "#player_lvl_and_world","objective": "gen.temp"},"color":"gold"}]
scoreboard players operation #player_lvl_and_world gen.temp += #worldlvltracker gen.world_lvl
scoreboard players operation #player_lvl_and_world gen.temp += @p gen.mobs.level
#tellraw @p ["lvl and world ",{"score":{"name": "#player_lvl_and_world","objective": "gen.temp"},"color":"yellow"}]

scoreboard players operation #cplayer_lvl_and_world gen.temp = #player_lvl_and_world gen.temp 

scoreboard players operation #cplayer_lvl_and_world gen.temp *= #biome_diff_percentage gen.temp
scoreboard players operation #cplayer_lvl_and_world gen.temp /= #100 gen.const 
#tellraw @p ["C Y ",{"score":{"name": "#cplayer_lvl_and_world","objective": "gen.temp"},"color":"light_purple"}]
scoreboard players operation #player_lvl_and_world gen.temp += #cplayer_lvl_and_world gen.temp
scoreboard players operation #player_lvl_and_world gen.temp += #biome_diff gen.temp
#tellraw @p {"score":{"name": "#player_lvl_and_world","objective": "gen.temp"},"color":"red"}
scoreboard players operation @s gen.mobs.level = #player_lvl_and_world gen.temp
# making sure it is not negative
scoreboard players set @s[scores={gen.mobs.level=..0}] gen.mobs.level 1
# make it do the spawning algorithm
tag @s add gen.try_spawn
