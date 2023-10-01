# div = 100 + haste
scoreboard players set #div gen.math 100
scoreboard players operation #div gen.math += @s gen.stat.ability_haste
# new = ( cooldown * 100 ) / div
#> cooldown after applying haste
scoreboard players set #new gen.math 100
scoreboard players operation #new gen.math *= .cooldown gen.ability
scoreboard players operation #new gen.math += #new gen.math
scoreboard players operation #new gen.math /= #div gen.math
scoreboard players operation #temp gen.math = #new gen.math
scoreboard players operation #new gen.math /= #2 gen.const
scoreboard players operation #temp gen.math %= #2 gen.const
scoreboard players operation #new gen.math += #temp gen.math
# return new += gametime
tellraw @a[tag=gen.dev.debug] [{"text":"After ability haste -> cooldown: ","color":"#aaffaa"},{"score":{"objective":"gen.math","name":"#new"},"color":"#22cc22"}]
scoreboard players operation #new gen.math += .gametime gen.time
return run scoreboard players get #new gen.math
