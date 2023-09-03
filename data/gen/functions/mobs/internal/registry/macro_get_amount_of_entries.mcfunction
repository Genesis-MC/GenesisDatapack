$execute store result score #temp gen.temp if data storage gen:mobs registry.$(registry)[]
scoreboard players remove #temp gen.temp 1
scoreboard players operation #mobs.total_entries gen.temp += #temp gen.temp
scoreboard players set #temp gen.temp 0