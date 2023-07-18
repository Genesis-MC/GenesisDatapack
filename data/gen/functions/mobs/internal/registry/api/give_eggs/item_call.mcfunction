tag @s add gen.done_giving_lore
data modify entity @s Item.id set from storage gen:temp id
data modify entity @s Owner set from storage gen:temp UUID
data modify entity @s Item.tag.EntityTag set from storage gen:mobs read[-1].entity_data
data modify entity @s PickupDelay set value 0s

data modify storage gen:temp temp set value []
data modify storage gen:temp temp set from entity @s Item.tag.display.Lore
function gen:mobs/internal/registry/api/give_eggs/delete_lore_line
#execute in minecraft:overworld run function gen:mobs/internal/registry/api/give_eggs/lore