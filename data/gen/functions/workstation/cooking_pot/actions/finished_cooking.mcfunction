
execute on passengers if entity @s[type=marker] run data modify storage gen:temp current_recipe set from entity @s data.output_item

execute on passengers if entity @s[type=marker] run data modify storage gen:temp macro.uuid set from storage gen:temp current_recipe.cooker_uuid
execute store result score #xp gen.professions run data get storage gen:temp current_recipe.xp
tellraw @p {"score":{"name": "#xp","objective": "gen.professions"}}
data modify storage gen:temp macro.command set value "function gen:professions/cooking/api/xp/apply"
function gen:macros/do_as_uuid with storage gen:temp macro

data modify storage gen:temp macro.command set from storage gen:temp current_recipe.success_function
execute if data storage gen:temp current_recipe.success_function run function gen:macros/do_as_uuid with storage gen:temp macro


summon item ~ ~0.5 ~ {Item:{id:"tnt",Count:1b},Tags:["new"],NoGravity:1b}
data modify entity @e[tag=new,limit=1] Item set from storage gen:workstation cooking_pot.current_recipe.output_item

playsound block.note_block.bell block @a[distance=..32] ~ ~ ~ 1 1.2
playsound entity.player.levelup block @a[distance=..32] ~ ~ ~ 1 0.5

execute on passengers if entity @s[type=marker] run data remove entity @s data.output_item
