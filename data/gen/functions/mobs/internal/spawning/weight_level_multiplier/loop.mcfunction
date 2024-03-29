execute store result score #wlm gen.temp run data get storage gen:mobs wlm[-1].weight_level_multiplier.v
# 0.5f * 1000 = 500
# wlm = 50 w = 1000.         
# wlm * L = 3 * 1000 = 3'000
scoreboard players operation #wlm gen.temp *= @s gen.mobs.level
# Level = 2. 500 * 2 = 1000
# T = w 
# T * wlm = 1000 * 3000 = 3000'000
execute store result score #w gen.temp run data get storage gen:mobs wlm[-1].weight
scoreboard players operation #temp gen.temp = #w gen.temp
scoreboard players operation #temp gen.temp *= #wlm gen.temp
# w = 150 * 1000 = 150000 / 1000 = 150
execute if score #temp gen.temp matches ..-1 run scoreboard players operation #temp gen.temp *= #-1 gen.const
# increasing the total wieght by the amount increased
# T /= 100 = 3000
scoreboard players operation #temp gen.temp /= #100 gen.const
scoreboard players operation #current_total_weight gen.temp += #temp gen.temp
execute store result storage gen:mobs wlm[-1].weight int 1 run scoreboard players operation #temp gen.temp += #w gen.temp
# 1.5 * 2 =3x
# 200 * 3 = 600
# 200 + 600 = 800
data modify storage gen:mobs success append from storage gen:mobs wlm[-1]
data remove storage gen:mobs wlm[-1]
scoreboard players remove #wlm_elements gen.temp 1
execute if score #wlm_elements gen.temp matches 1.. run function gen:mobs/internal/spawning/weight_level_multiplier/loop
