execute at @s if entity @p[distance=..16] run data modify entity @s CustomNameVisible set value 1b

execute if data entity @s HandItems[0].tag.gen.SavedMobName run tag @s add gen.mobs.name_in_mainhand
execute if data entity @s HandItems[1].tag.gen.SavedMobName run tag @s add gen.mobs.name_in_offhand


execute at @s[type=minecraft:slime] if entity @e[type=minecraft:slime,distance=0.1..1] run data modify entity @s CustomName set value ''
execute at @s[type=minecraft:magma_cube] if entity @e[type=minecraft:magma_cube,distance=0.1..1] run data modify entity @s CustomName set value ''


execute unless data entity @s HandItems[].tag.gen.SavedMobName in minecraft:overworld run function gen:mobs/internal/name_display/save_name
execute unless score .gen.mobs.name_display.must_hit gen.config matches 0 run function gen:mobs/internal/name_display/display
scoreboard players operation @s gen.mobs.name_display = mobs.name_display.type gen.config
