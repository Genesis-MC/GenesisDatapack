# Called on the interaction of work stations that are left-clicked by a player.

scoreboard players set #action gen.temp 0
execute on attacker store success score #sneaking gen.temp if predicate gen:utils/is_sneaking

execute if score #action gen.temp matches 0 if score #sneaking gen.temp matches 0 on vehicle on passengers if entity @s[type=marker] at @s run function gen:workstation/cooking_pot/actions/remove_item
execute if score #action gen.temp matches 0 if score #sneaking gen.temp matches 1 on vehicle on passengers if entity @s[type=marker] at @s run function gen:workstation/cooking_pot/actions/remove_all_items