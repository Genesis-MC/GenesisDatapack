# set up and clean up
scoreboard players reset @s gen.ability.use
scoreboard players set .hand gen.ability -1
# check if ability is still on cooldown, get hand and ability function
execute store result score #is_hand gen.math run function gen:gear/internal/ability/check_mainhand
execute if score #is_hand gen.math matches 0 run function gen:gear/internal/ability/check_offhand
execute if score .hand gen.ability matches -1 run return 0
# run ability function \
>>> NOTE: the called function has to set .cooldown gen.ability to the cooldown pre ability haste in ticks (should always be the same number) <<<
execute at @s run function gen:core/internal/run_function with storage gen:temp ability
tellraw @a[tag=gen.dev.debug] [{"selector":"@s","color":"#22cc22"},{"text":" has cast an ability - id: ","color":"#aaffaa"},{"nbt":"ability.function","storage":"gen:temp"},{"text":" - cooldown: ","color":"#aaffaa"},{"score":{"name":".cooldown","objective":"gen.ability"}}]
# cooldown is at .cooldown gen.ability
function gen:gear/internal/ability/calculate_cooldown
execute store result storage gen:temp new_cooldown int 1 run scoreboard players get #new gen.math
execute if score .hand gen.ability matches 1 run item modify entity @s weapon.mainhand gen:gear/ability/apply_cooldown
execute if score .hand gen.ability matches 1 run scoreboard players operation @s gen.stat.cooldown.mainhand = #new gen.math
execute if score .hand gen.ability matches 2 run item modify entity @s weapon.offhand gen:gear/ability/apply_cooldown
execute if score .hand gen.ability matches 2 run scoreboard players operation @s gen.stat.cooldown.offhand = #new gen.math
