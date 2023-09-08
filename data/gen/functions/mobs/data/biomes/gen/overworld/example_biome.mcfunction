# this is the biome id i generate them by getting the string value of each letter and adding them and multiplying by first letter
# sudeo code
# let i = 0
# for char in string
#     i += char;
# i *= string[0];
# i is the ID
#scoreboard players set @e[type=#gen:alive_no_player,distance=..6] gen.biome ->ID<-

scoreboard players set @e[type=#gen:alive_no_player,distance=..6] gen.biome 196816
# biome difficulty
scoreboard players set @e[type=#gen:alive_no_player,distance=..6] gen.biome_difficulty 5
# to stop checking of further biomes
scoreboard players set #foundBiome gen.temp 1