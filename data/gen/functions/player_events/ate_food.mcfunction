#very simple

data modify storage gen:temp SelectedItem set from entity @s SelectedItem
execute if data storage gen:temp SelectedItem.tag.gen.when_eaten_function run function gen:player_events/internal/macro_when_eaten_function with storage gen:temp SelectedItem.tag.gen
advancement revoke @s only gen:ate_food