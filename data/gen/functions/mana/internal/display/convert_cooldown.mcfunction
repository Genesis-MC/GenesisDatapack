
scoreboard players operation #cduntil gen.math -= .gametime gen.time
execute if score #cduntil gen.math matches ..0 run return 0

execute store result score @s gen.cooldown.seconds store result score @s gen.cooldown.decimal run scoreboard players add #cduntil gen.math 1

scoreboard players operation @s gen.cooldown.seconds /= #20 gen.const
scoreboard players operation @s gen.cooldown.decimal %= #20 gen.const
scoreboard players operation @s gen.cooldown.decimal /= #2 gen.const

scoreboard players set @s gen.cooldown.icon 2
scoreboard players set @s gen.cooldown.dot 1
