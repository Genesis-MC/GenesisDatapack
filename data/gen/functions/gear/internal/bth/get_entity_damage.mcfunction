execute store result score #d gen.temp run difficulty
scoreboard players set #damage gen.temp 0
execute if score #d gen.temp matches 1 store result score #damage gen.temp run attribute @s generic.attack_damage get 5
execute if score #d gen.temp matches 2 store result score #damage gen.temp run attribute @s generic.attack_damage get 10
execute if score #d gen.temp matches 3 store result score #damage gen.temp run attribute @s generic.attack_damage get 15
scoreboard players operation #damage gen.temp /= #10 gen.const
