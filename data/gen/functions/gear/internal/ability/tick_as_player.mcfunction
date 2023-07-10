scoreboard players reset @s gen.ability.use
scoreboard players set .hand gen.ability -1
execute if predicate gen:gear/ability/can_cast_mainhand run function gen:gear/internal/ability/get_mainhand_id
# maybe add error message is spell is on cooldown
execute if score .hand gen.ability matches -1 if predicate gen:gear/ability/can_cast_offhand run function gen:gear/internal/ability/get_offhand_id
execute if score .hand gen.ability matches -1 run return -1
# now we have the actual ability in .id gen.ability
# and the correct .hand gen.ability (1 main, 2 off)

# check for all spells
# - this should be a function tag
# - and that should be calling a spell dictionary
# so if's good for performance and others can easily add to it

tellraw @a [{"selector":"@s","color":"gold"},{"text":" has cast an ability with the id: "},{"score":{"name":".id","objective":"gen.ability"}}]

# apply cooldown :)
