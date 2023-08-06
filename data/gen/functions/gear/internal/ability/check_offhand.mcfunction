# if you are not holding a wfoas, return
execute unless score @s gen.stat.ability.offhand matches 1.. run return 0
# if the ability is on cooldown, log and return
execute if score @s gen.stat.cooldown.offhand > .gametime gen.time run tellraw @a[tag=gen.dev.debug] [{"translate":"Offhand ability %s on cooldown until: %s","color":"#aaffaa","with":[{"nbt":"Inventory[{Slot:-106b}].tag.gen.stat.ability","entity":"@s","color":"#22cc22"},{"score":{"objective":"gen.stat.cooldown.offhand","name":"@s"},"color":"#22cc22"}]}]
execute if score @s gen.stat.cooldown.offhand > .gametime gen.time run return 0
# check if the cooldown in the nbt is correct (since the scores are 1 tick behind)
execute store result score #cooldown gen.ability run data get entity @s Inventory[{Slot:-106b}].tag.gen.stat.cooldown
execute unless score #cooldown gen.ability = @s gen.stat.cooldown.offhand run tellraw @a[tag=gen.dev.debug] [{"translate":"Offhand ability %s on cooldown until: %s","color":"#aaffaa","with":[{"nbt":"Inventory[{Slot:-106b}].tag.gen.stat.ability","entity":"@s","color":"#22cc22"},{"score":{"objective":"gen.ability","name":"#cooldown"},"color":"#22cc22"}]}]
execute unless score #cooldown gen.ability = @s gen.stat.cooldown.offhand run return 0
# save ability function into storage
data modify storage gen:temp ability.function set from entity @s Inventory[{Slot:-106b}].tag.gen.stat.ability
# set hand score if everything succeeded
scoreboard players set .hand gen.ability 2
return 2
