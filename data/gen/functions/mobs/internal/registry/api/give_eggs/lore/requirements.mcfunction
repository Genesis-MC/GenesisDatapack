item modify entity @s container.0 gen:mobs/format/egg/requirements
execute if data storage gen:mobs read[-1].requirements.level run function gen:mobs/internal/registry/api/give_eggs/lore/requirements/level
execute if data storage gen:mobs read[-1].requirements.moon_phase run function gen:mobs/internal/registry/api/give_eggs/lore/requirements/moon_phase
execute if data storage gen:mobs read[-1].requirements.dimension run item modify entity @s container.0 gen:mobs/format/egg/requirements/dimension
execute if data storage gen:mobs read[-1].requirements.biome run item modify entity @s container.0 gen:mobs/format/egg/requirements/biome
execute if data storage gen:mobs read[-1].requirements.block run item modify entity @s container.0 gen:mobs/format/egg/requirements/block
