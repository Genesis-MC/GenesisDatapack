
scoreboard players add @s gen.temp 1
execute if score @s gen.temp matches 3.. run particle flame ~ ~ ~ 0 0 0 0.4 50
execute if score @s gen.temp matches 3.. run particle explosion ~ ~ ~ 0.5 0.5 0.5 0 4
execute if score @s gen.temp matches 3.. run function gen:ability/data/macros/aoe_short with storage gen:ability firebird_dmg
execute if score @s gen.temp matches 3.. run kill @s