execute store result score #id gen.temp run data get storage gen:mobs cache.biome_ids[{Key:"minecraft:crimson_forest"}].Value
scoreboard players operation @e[type=#gen:alive_no_player,distance=..6] gen.biome = #id gen.temp
scoreboard players set @e[type=#gen:alive_no_player,distance=..6] gen.biome_difficulty 7
scoreboard players set #foundBiome gen.temp 1