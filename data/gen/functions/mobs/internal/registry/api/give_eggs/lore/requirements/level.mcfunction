item modify entity @s container.0 gen:mobs/format/egg/requirements/level
execute store result score #min gen.temp run data get storage gen:mobs read[-1].requirements.level.min
execute store result score #max gen.temp run data get storage gen:mobs read[-1].requirements.level.max 
execute unless score #min gen.temp matches 0 run item modify entity @s container.0 gen:mobs/format/egg/requirements/level/min
execute unless score #max gen.temp matches 2147483647 run item modify entity @s container.0 gen:mobs/format/egg/requirements/level/max

#data modify storage gen:temp lore append from entity @s item.tag.display.Lore