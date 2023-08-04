scoreboard players reset @s gen.ability.use
scoreboard players set .hand gen.ability -1
execute if predicate gen:gear/ability/can_cast_mainhand run function gen:gear/internal/ability/get_mainhand_id
# maybe add error message if spell is on cooldown
execute if score .hand gen.ability matches -1 if predicate gen:gear/ability/can_cast_offhand run function gen:gear/internal/ability/get_offhand_id
execute if score .hand gen.ability matches -1 run return -1
# now we have the actual ability in .id gen.ability
# and the correct .hand gen.ability (1 main, 2 off)

execute at @s run function #gen:gear/ability/dictionary
tellraw @a[tag=gen.dev.debug] [{"selector":"@s","color":"#22cc22"},{"text":" has cast an ability - id: ","color":"#aaffaa"},{"score":{"name":".id","objective":"gen.ability"}},{"text":" - cooldown: ","color":"#aaffaa"},{"score":{"name":".cooldown","objective":"gen.ability"}}]

# cooldown is at .cooldown gen.ability
execute store result storage gen:temp new_cooldown int 1 run function gen:gear/internal/ability/calculate_cooldown
execute if score .hand gen.ability matches 1 run item modify entity @s weapon.mainhand gen:gear/ability/apply_cooldown
execute if score .hand gen.ability matches 1 run scoreboard players operation @s gen.stat.cooldown.mainhand = #new gen.math
execute if score .hand gen.ability matches 2 run item modify entity @s weapon.offhand gen:gear/ability/apply_cooldown
execute if score .hand gen.ability matches 2 run scoreboard players operation @s gen.stat.cooldown.offhand = #new gen.math
