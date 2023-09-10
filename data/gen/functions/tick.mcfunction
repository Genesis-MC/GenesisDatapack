# tick ticking function
schedule function gen:tick 1t replace

execute if score Core gen.modules matches 1 run function gen:core/tick
execute if score Crops gen.modules matches 1 run function gen:crops/tick
execute if score Mobs gen.modules matches 1 run function gen:mobs/tick
execute if score Professions gen.modules matches 1 run function gen:professions/tick
execute if score Menu gen.modules matches 1 run function gen:menu/tick
execute if score Gear gen.modules matches 1 run function gen:gear/tick
execute if score PlayerEvents gen.modules matches 1 run function gen:player_events/tick
execute if score Menu gen.modules matches 1 run function gen:menu/tick
execute if score PlayerEvents gen.modules matches 1 run function gen:player_events/tick
execute if score Guidebook gen.modules matches 1 run function gen:guidebook/tick
execute if score Ability gen.modules matches 1 run function gen:ability/tick
execute if score Manabar gen.modules matches 1 run function gen:mana/tick
