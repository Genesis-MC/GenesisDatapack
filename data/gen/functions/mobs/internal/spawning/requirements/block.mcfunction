# most wonky fix i had in mind


execute store result score . t run data get storage gen:mobs check_requirements[-1].requirements.block
scoreboard players set #success gen.temp 0
execute if score . t matches 0..63 positioned ~ ~-1 ~ if predicate gen:mobs/blocks/0-63 store success score #success gen.temp run return 1
execute if score . t matches 64..127 positioned ~ ~-1 ~ if predicate gen:mobs/blocks/64-127 store success score #success gen.temp run return 1
execute if score . t matches 128..191 positioned ~ ~-1 ~ if predicate gen:mobs/blocks/128-191 store success score #success gen.temp run return 1
execute if score . t matches 192..255 positioned ~ ~-1 ~ if predicate gen:mobs/blocks/192-255 store success score #success gen.temp run return 1
execute if score . t matches 256..319 positioned ~ ~-1 ~ if predicate gen:mobs/blocks/256-319 store success score #success gen.temp run return 1
execute if score . t matches 320..383 positioned ~ ~-1 ~ if predicate gen:mobs/blocks/320-383 store success score #success gen.temp run return 1
function #gen:mobs/data/requirements/blocks_tags
