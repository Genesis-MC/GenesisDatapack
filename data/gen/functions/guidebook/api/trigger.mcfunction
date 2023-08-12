scoreboard players operation clicked gen.guidebook = @s gen.guidebook
scoreboard players reset @s gen.guidebook

function gen:guidebook/internal/player/get_held_book
execute unless data storage gen:guidebook held_book run return 0

execute if score clicked gen.guidebook matches 1..10 run function gen:guidebook/internal/get_local_action
execute if score clicked gen.guidebook matches 1000.. run function gen:guidebook/internal/get_global_action
execute if data storage gen:guidebook action{action:"go_to_chapter"} run function gen:guidebook/internal/action/go_to_chapter
execute if data storage gen:guidebook action{action:"history_backward"} run function gen:guidebook/internal/action/history_backward
execute if data storage gen:guidebook action{action:"history_forward"} run function gen:guidebook/internal/action/history_forward