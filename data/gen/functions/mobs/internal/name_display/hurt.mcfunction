scoreboard players set #has_dynamic_elements gen.temp 1
execute if score mobs.name_display.type gen.config matches 0 run scoreboard players set #has_dynamic_elements gen.temp 0
execute unless score @s gen.mobs.name_display = mobs.name_display.type gen.config run scoreboard players set #has_dynamic_elements gen.temp 1

execute if score #has_dynamic_elements gen.temp matches 1 run function gen:mobs/internal/name_display/display