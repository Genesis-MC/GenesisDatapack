execute store result score #wlm gen.temp run data get storage gen:mobs success[-1].weight_level_multiplier.v
# 0.5f * 1000 = 500
scoreboard players operation #wlm gen.temp *= @s gen.mobs.level
# l = 2 500 * 2 = 1000
execute store result score #w gen.temp run data get storage gen:mobs success[-1].weight
scoreboard players operation #temp gen.temp = #w gen.temp
scoreboard players operation #temp gen.temp *= #wlm gen.temp
# w = 150 * 1000 = 150000 / 1000 = 150
execute if score #temp gen.temp matches ..-1 run scoreboard players operation #temp gen.temp *= #-1 gen.const
# increasing the total wieght by the amount increased
scoreboard players operation #temp gen.temp /= #100 gen.const
scoreboard players operation #current_total_weight gen.temp += #temp gen.temp
execute store result storage gen:mobs success[-1].weight int 1 run scoreboard players operation #temp gen.temp += #w gen.temp
# 