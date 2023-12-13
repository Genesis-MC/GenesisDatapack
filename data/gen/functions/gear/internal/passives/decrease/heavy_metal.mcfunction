
scoreboard players operation @s gen.stat.knockback_resistance -= @s gen.passive.heavy_metal_statboost
scoreboard players set @s gen.passive.heavy_metal_statboost 0
function gen:gear/data/stat/update/knockback_resistance
function gen:menu/internal/amulet/update_lore
tag @s remove gen.passive.heavy_metal