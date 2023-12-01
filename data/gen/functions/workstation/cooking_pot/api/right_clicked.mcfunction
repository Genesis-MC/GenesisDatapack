# Called on the interaction of work stations that are right-clicked by a player.

scoreboard players set #action gen.temp 0
execute on target store success score #sneaking gen.temp if predicate gen:utils/is_sneaking


# add item
execute if score #action gen.temp matches 0 if score #sneaking gen.temp matches 0 run data modify storage gen:core run_with_item.command set value "execute as @e[type=interaction,tag=gen.interaction.rclick_responder,limit=1,sort=nearest] on vehicle on passengers if entity @s[type=marker] unless data entity @s data.current_recipe run function gen:workstation/cooking_pot/actions/add_item"
execute if score #action gen.temp matches 0 if score #sneaking gen.temp matches 0 on target run function gen:core/api/item/run_with_consume_item

# cook
execute if score #action gen.temp matches 0 if score #sneaking gen.temp matches 1 on vehicle on passengers if entity @s[type=marker] if data entity @s data.items[0] unless data entity @s data.current_recipe run function gen:workstation/cooking_pot/actions/start_cooking

function gen:workstation/cooking_pot/internal/effect/bubble