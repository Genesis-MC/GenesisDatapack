# fail if item has no ability
execute unless data entity @s SelectedItem.tag.gen.ability run return 0
# check cooldown
execute store result score #cooldown gen.ability run data get entity @s SelectedItem.tag.gen.ability.cooldown
execute if score #cooldown gen.ability > .gametime gen.time run tellraw @a[tag=gen.dev.debug] [{"translate":"Mainhand ability %s on cooldown until: %s","color":"#aaffaa","with":[{"nbt":"SelectedItem.tag.gen.ability.function","entity":"@s","color":"#22cc22"},{"score":{"objective":"gen.ability","name":"#cooldown"},"color":"#22cc22"}]}]
execute if score #cooldown gen.ability > .gametime gen.time run return 0
# run the ability function (that function needs to set .cooldown gen.ability to the base cooldown BEEFORE ability haste)
scoreboard players reset .cooldown gen.ability
execute at @s run function gen:core/internal/run_function with entity @s SelectedItem.tag.gen.ability
# calculate cooldown after ability haste as `new = ( cooldown * 100 ) / ( 100 + haste )`
scoreboard players set #div gen.math 100
scoreboard players operation #div gen.math += @s gen.stat.ability_haste
scoreboard players set #new gen.math 100
scoreboard players operation #new gen.math *= .cooldown gen.ability
scoreboard players operation #new gen.math += #new gen.math
scoreboard players operation #new gen.math /= #div gen.math
scoreboard players operation #temp gen.math = #new gen.math
scoreboard players operation #new gen.math /= #2 gen.const
scoreboard players operation #temp gen.math %= #2 gen.const
scoreboard players operation #new gen.math += #temp gen.math
tellraw @a[tag=gen.dev.debug] [\
    {"selector":"@s","color":"#22cc22"},\
    {"text":" -> ability: ","color":"#aaffaa"},{"nbt":"ability.function","storage":"gen:temp"},\
    {"text":" - cooldown: ","color":"#aaffaa"},{"score":{"name":".cooldown","objective":"gen.ability"}},\
    {"text":" > ","color":"#aaffaa"},{"score":{"name":"#new","objective":"gen.math"}}\
    ]
# apply new cooldown to item as `new += gametime`
execute store result storage gen:temp cooldown int 1 run scoreboard players operation #new gen.math += .gametime gen.time
item modify entity @s weapon.mainhand gen:ability/apply_cooldown
