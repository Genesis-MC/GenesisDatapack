say decrease
scoreboard players operation @s gen.stat.attack_speed -= @s gen.active.stance_swap_onslaught_statboost
scoreboard players remove @s gen.stat.speed 40
scoreboard players add @s gen.stat.armor 20
scoreboard players add @s gen.stat.armor_toughness 20
function gen:gear/data/stat/update/attack_speed
function gen:gear/data/stat/update/speed
function gen:gear/data/stat/update/armor
function gen:gear/data/stat/update/armor_toughness

function gen:menu/internal/amulet/update_lore
tag @s remove gen.active.stance_swap_onslaught