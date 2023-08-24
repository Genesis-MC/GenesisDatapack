scoreboard players set #mult gen.math 1000

scoreboard players set .maxhp gen.math 200
scoreboard players operation .maxhp gen.math += @s gen.stat.health
scoreboard players operation .percenthp gen.math = @s gen.passive.health
scoreboard players operation .percenthp gen.math *= #mult gen.math
scoreboard players operation .percenthp gen.math /= .maxhp gen.math

scoreboard players reset @s gen.passive.damage_taken