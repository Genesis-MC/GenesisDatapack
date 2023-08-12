item modify entity @s container.0 gen:mobs/format/egg/requirements/moon_phase
execute store result score #min gen.temp run data get storage gen:mobs read[-1].requirements.moon_phase.min
execute store result score #max gen.temp run data get storage gen:mobs read[-1].requirements.moon_phase.max
execute store result score #except gen.temp run data get storage gen:mobs read[-1].requirements.moon_phase.except
execute store result score #on_even_days gen.temp run data get storage gen:mobs read[-1].requirements.moon_phase.on_even_days
execute store result score #on_odd_days gen.temp run data get storage gen:mobs read[-1].requirements.moon_phase.on_odd_days
execute store result score #on_prime_days gen.temp run data get storage gen:mobs read[-1].requirements.moon_phase.on_prime_days
execute store result score #exact gen.temp run data get storage gen:mobs read[-1].requirements.moon_phase.exact

execute unless score #min gen.temp matches 0 run item modify entity @s container.0 gen:mobs/format/egg/requirements/moon_phase/min
execute unless score #max gen.temp matches 0 run item modify entity @s container.0 gen:mobs/format/egg/requirements/moon_phase/max
execute unless score #except gen.temp matches 0 run item modify entity @s container.0 gen:mobs/format/egg/requirements/moon_phase/except
execute unless score #on_even_days gen.temp matches 0 run item modify entity @s container.0 gen:mobs/format/egg/requirements/moon_phase/on_odd_days
execute unless score #on_odd_days gen.temp matches 0 run item modify entity @s container.0 gen:mobs/format/egg/requirements/moon_phase/on_even_days
execute unless score #on_prime_days gen.temp matches 0 run item modify entity @s container.0 gen:mobs/format/egg/requirements/moon_phase/on_prime_days
execute unless score #exact gen.temp matches 0 run item modify entity @s container.0 gen:mobs/format/egg/requirements/moon_phase/exact