# converting from ticks -> seconds
scoreboard players set #div gen.math 20
scoreboard players set #multiply gen.math 100
# temp val for calculating current ability cooldown
scoreboard players operation .cooldownsec gen.math = @s gen.stat.cooldown.mainhand
scoreboard players operation .cooldownsec gen.math -= .gametime gen.time

scoreboard players operation .cooldowntick gen.math = .cooldownsec gen.math
scoreboard players operation .cooldowntick gen.math %= #div gen.math
scoreboard players operation .cooldowntick gen.math *= #multiply gen.math
scoreboard players operation .cooldowntick gen.math /= #div gen.math
scoreboard players operation .cooldownsec gen.math /= #div gen.math
# if you are not holding a wfoas, return
execute unless score @s gen.stat.ability.mainhand matches 1.. run return 0
# if the ability is on cooldown, log and return
execute if score @s gen.stat.cooldown.mainhand > .gametime gen.time run tellraw @s [{"translate":"Mainhand ability %s on cooldown for %s","color":"white","with":[{"nbt":"SelectedItem.tag.gen.stat.ability","entity":"@s","color":"#22cc22"},{"score":{"objective":"gen.math","name":".cooldownsec"},"color":"#22cc22"}]}]
execute if score @s gen.stat.cooldown.mainhand > .gametime gen.time run tellraw @a[tag=gen.dev.debug] [{"translate":"Mainhand ability %s on cooldown until: %s","color":"#aaffaa","with":[{"nbt":"SelectedItem.tag.gen.stat.ability","entity":"@s","color":"#22cc22"},{"score":{"objective":"gen.stat.cooldown.mainhand","name":"@s"},"color":"#22cc22"}]}]
execute if score @s gen.stat.cooldown.mainhand > .gametime gen.time run return 0
# check if the cooldown in the nbt is correct (since the scores are 1 tick behind)
execute store result score #cooldown gen.ability run data get entity @s SelectedItem.tag.gen.stat.cooldown
execute unless score #cooldown gen.ability = @s gen.stat.cooldown.mainhand run tellraw @a[tag=gen.dev.debug] [{"translate":"Mainhand ability %s on cooldown until %s","color":"#aaffaa","with":[{"nbt":"SelectedItem.tag.gen.stat.ability","entity":"@s","color":"#22cc22"},{"score":{"objective":"gen.ability","name":"#cooldown"},"color":"#22cc22"}]}]
execute unless score #cooldown gen.ability = @s gen.stat.cooldown.mainhand run return 0
# save ability function into storage
data modify storage gen:temp ability.function set from entity @s SelectedItem.tag.gen.stat.ability
# set hand score if everything succeeded
scoreboard players set .hand gen.ability 1
return 1
