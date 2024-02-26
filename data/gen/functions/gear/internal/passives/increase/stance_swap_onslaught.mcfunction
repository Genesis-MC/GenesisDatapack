say increase
scoreboard players set #div gen.math 10
scoreboard players operation @s gen.active.stance_swap_onslaught_statboost = @s gen.stat.attack_speed
scoreboard players operation @s gen.active.stance_swap_onslaught_statboost /= #div gen.math
scoreboard players operation @s gen.stat.attack_speed += @s gen.active.stance_swap_onslaught_statboost

scoreboard players add @s gen.stat.speed 40
scoreboard players remove @s gen.stat.armor 20
scoreboard players remove @s gen.stat.armor_toughness 20
function gen:gear/data/stat/update/attack_speed
function gen:gear/data/stat/update/speed
function gen:gear/data/stat/update/armor
function gen:gear/data/stat/update/armor_toughness

function gen:menu/internal/amulet/update_lore
tag @s add gen.active.stance_swap_onslaught