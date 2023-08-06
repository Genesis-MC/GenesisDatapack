scoreboard players set #hit gen.raycast 1
execute unless data storage gen:raycast callback.entity run return 0
data modify storage gen:raycast call.function set from storage gen:raycast callback.entity
function gen:core/internal/run_function with storage gen:raycast call
