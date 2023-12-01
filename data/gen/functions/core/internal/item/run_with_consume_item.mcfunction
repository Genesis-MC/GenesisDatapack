$execute store result score #temp gen.temp run $(command)
execute unless score #temp gen.temp matches 1.. run return 0

execute store result score #count gen.temp run data get storage gen:core run_with_item.item.Count 1
scoreboard players operation #count gen.temp -= #temp gen.temp
execute if score #count gen.temp matches ..-1 run scoreboard players set #count gen.temp 0
execute if data storage gen:core run_with_item{slot:"mainhand"} run item modify entity @s weapon.mainhand gen:count
execute if data storage gen:core run_with_item{slot:"offhand"} run item modify entity @s weapon.offhand gen:count