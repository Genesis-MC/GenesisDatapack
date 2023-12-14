
scoreboard players operation @s gen.stat.armor -= @s gen.passive.fortitude_of_the_undying_statboost
scoreboard players set @s gen.passive.fortitude_of_the_undying_statboost 0
scoreboard players set @s gen.passive.fortitude_of_the_undying_cd 0
function gen:gear/data/stat/update/armor
function gen:menu/internal/amulet/update_lore
tag @s remove gen.passive.fortitude_of_the_undying