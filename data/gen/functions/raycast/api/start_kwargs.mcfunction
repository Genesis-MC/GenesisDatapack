### kwargs: optional keyword arguments
data modify storage gen:raycast kwargs set value {pass_through:"#gen:pass_through"}
$data modify storage gen:raycast kwargs merge value $(kwargs)

$scoreboard players set #dist gen.raycast $(distance)
$data modify storage gen:raycast callback set value $(callback)
scoreboard players set #hit gen.raycast 0

tag @s add gen.raycaster
execute at @s anchored eyes positioned ^ ^ ^ run function gen:raycast/internal/recursive_kwargs with storage gen:raycast kwargs
tag @s remove gen.raycaster
