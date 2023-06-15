execute if score #worldlvltracker gen.world_lvl matches 3.. at @s run function gen:mobs/internal/spawning/custom_mob/root
execute if data entity @s HandItems[].tag.gen.mob_base_level store result score @s gen.mobs.level run data get entity @s HandItems[].tag.gen.mob_base_level
scoreboard players operation @s gen.mobs.level += @p gen.mobs.level
#Adding Randomizer values
execute if predicate gen:random50 run scoreboard players add @s gen.mobs.level 1
execute if predicate gen:random50 run scoreboard players add @s gen.mobs.level 1
execute if predicate gen:random50 run scoreboard players add @s gen.mobs.level 1
execute if score @s gen.mobs.level matches 2.. if predicate gen:random50 run scoreboard players remove @s gen.mobs.level 1
execute if score @s gen.mobs.level matches 2.. if predicate gen:random50 run scoreboard players remove @s gen.mobs.level 1
execute if score @s gen.mobs.level matches 2.. if predicate gen:random50 run scoreboard players remove @s gen.mobs.level 1
#Adding world level
scoreboard players operation @s gen.mobs.level += #worldlvltracker gen.world_lvl
scoreboard players set @s[scores={gen.mobs.level=..0}] gen.mobs.level 1
#Determines if mob will become custom mob or not



