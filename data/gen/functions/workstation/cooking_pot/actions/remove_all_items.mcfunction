scoreboard players set #action gen.temp 1
function gen:workstation/cooking_pot/actions/remove_item
execute if data entity @s data.items[0] run function gen:workstation/cooking_pot/actions/remove_all_items 