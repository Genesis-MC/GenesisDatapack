scoreboard players add @s gen.passive.frostbite 1

execute if score @s gen.passive.frostbite matches 10.. at @s run particle block ice ~ ~1 ~ 0.5 0 0.5 0 30
execute if score @s gen.passive.frostbite matches 10.. run damage @s 8 freeze
execute if score @s gen.passive.frostbite matches 10.. run effect give @s slowness 3 4 true
execute if score @s gen.passive.frostbite matches 10.. run scoreboard players reset @s gen.passive.frostbite