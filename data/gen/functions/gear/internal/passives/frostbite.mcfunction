scoreboard players add @s gen.passive.frostbite 1
execute if score @s gen.passive.frostbite matches 10.. run damage @s 10 freeze
execute if score @s gen.passive.frostbite matches 10.. run effect give @s slowness 3 4 true
execute if score @s gen.passive.frostbite matches 10.. run scoreboard players reset @s gen.passive.frostbite