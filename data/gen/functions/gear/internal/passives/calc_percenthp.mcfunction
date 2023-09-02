scoreboard players set #mult gen.math 1000

scoreboard players set .maxhp gen.math 200
scoreboard players operation .maxhp gen.math += @s gen.stat.health
scoreboard players operation .percenthp gen.math = @s gen.passive.health
scoreboard players operation .percenthp gen.math *= #mult gen.math
scoreboard players operation .percenthp gen.math /= .maxhp gen.math

#tellraw @p {"score":{"name":".percenthp","objective":"gen.math"}}
