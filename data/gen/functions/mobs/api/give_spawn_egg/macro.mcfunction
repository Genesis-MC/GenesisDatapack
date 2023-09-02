$data modify storage gen:mobs read set from storage gen:mobs registry.$(registry)
data remove storage gen:mobs read[{name:"minecraft:base"}]
$data modify storage gen:temp id set value "$(id)"
$data modify storage gen:temp registry set value '$(registry_name)'
execute if data storage gen:mobs read[0] run function gen:mobs/internal/registry/api/give_eggs/start
return 0