scoreboard players operation @s gen.stat.armor -= @s gen.passive.fortitude_of_the_undying_statboost

scoreboard players operation @s gen.passive.fortitude_of_the_undying_statboost = @s gen.passive.fortitude
scoreboard players set @s gen.passive.fortitude 0
scoreboard players set @s gen.passive.fortitude_of_the_undying_cd 15

scoreboard players operation @s gen.stat.armor += @s gen.passive.fortitude_of_the_undying_statboost
function gen:gear/data/stat/update/armor
function gen:menu/internal/amulet/update_lore
tag @s add gen.passive.fortitude_of_the_undying
particle angry_villager ~ ~1 ~ 0.7 0.5 0.7 0 30
playsound entity.iron_golem.death player @a ~ ~ ~ 0.5