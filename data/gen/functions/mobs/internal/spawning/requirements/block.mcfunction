# most wonky fix i had in mind


execute store result score . t run data get storage gen:mobs check_requirements[-1].requirements.block
execute positioned ~ ~-1 ~ store success score #success gen.temp if predicate gen:mobs/blocks