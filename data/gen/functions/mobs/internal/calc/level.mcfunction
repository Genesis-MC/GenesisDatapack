scoreboard players operation @s gen.mobs.level += @p gen.mobs.level
tag @s add this
scoreboard players operation @s gen.biome = @e[tag=!this,distance=..4,limit=1,type=#gen:alive_no_player] gen.biome
execute unless score @s gen.biome matches -2147483648..2147483647 run function gen:mobs/data/biomes/root
tag @s remove this
#execute if data entity @s HandItems[].tag.gen.mob_data run function gen:mobs/data/mob_data
#Adding Randomizer values
execute if predicate gen:randomizer/random50 run scoreboard players add @s gen.mobs.level 1
execute if predicate gen:randomizer/random50 run scoreboard players add @s gen.mobs.level 1
execute if predicate gen:randomizer/random50 run scoreboard players add @s gen.mobs.level 1
execute if score @s gen.mobs.level matches 2.. if predicate gen:randomizer/random50 run scoreboard players remove @s gen.mobs.level 1
execute if score @s gen.mobs.level matches 2.. if predicate gen:randomizer/random50 run scoreboard players remove @s gen.mobs.level 1
execute if score @s gen.mobs.level matches 2.. if predicate gen:randomizer/random50 run scoreboard players remove @s gen.mobs.level 1
#Adding world level
scoreboard players operation @s gen.mobs.level += #worldlvltracker gen.world_lvl
scoreboard players set @s[scores={gen.mobs.level=..0}] gen.mobs.level 1
tag @s add gen.try_spawn
