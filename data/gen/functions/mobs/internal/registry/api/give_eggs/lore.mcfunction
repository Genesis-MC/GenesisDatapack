data modify storage gen:temp lore set value []
item modify entity @s container.0 gen:lore_delete

item modify entity @s container.0 gen:mobs/format/egg/registry
item modify entity @s container.0 gen:mobs/format/egg/name
item modify entity @s container.0 gen:mobs/format/egg/weight
execute if data storage gen:mobs read[-1].weight_level_mutliplier.value run function gen:mobs/internal/registry/api/give_eggs/lore/weight_level_multiplier
execute if data storage gen:mobs read[-1].requirements run function gen:mobs/internal/registry/api/give_eggs/lore/requirements


data modify storage gen:temp lore set from entity @s item.tag.display.Lore


