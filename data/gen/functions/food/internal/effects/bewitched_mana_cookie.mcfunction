
# Restores 10% of max mana
scoreboard players set #div gen.math 10
scoreboard players operation #temp gen.math = @s gen.mana.max
scoreboard players operation #temp gen.math /= #div gen.math
scoreboard players operation @s gen.mana.current += #temp gen.math
