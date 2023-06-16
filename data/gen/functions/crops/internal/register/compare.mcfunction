data modify storage gen:crops previous_instructions set from storage gen:crops to_register
data modify storage gen:crops to_register set value []
function gen:crops/data/registry
execute store result score #debug.num_instructions gen.crops.calc run data get storage gen:crops to_register
tellraw @a[tag=gen.dev.debug] ["",{"text":"gen/crops -> ","color":"#CBBECB"},{"text":"Received ","color":"yellow"},{"score":{"name":"#debug.num_instructions","objective":"gen.crops.calc"},"color":"gold"},{"text":" instructions","color":"yellow"}]
# do not re-register if new instructions are the same as already registered instructions
execute store success score #different gen.crops.calc run data modify storage gen:crops previous_instructions set from storage gen:crops to_register
data remove storage gen:crops previous_instructions
execute if score #different gen.crops.calc matches 0 run tellraw @a[tag=gen.dev.debug] ["",{"text":"gen/crops -> ","color":"#CBBECB"},{"text":"Using already built ","color":"yellow"},{"text":"registry","color":"aqua","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"storage":"gen:crops","nbt":"registry.ids"}]}}]

execute if score #different gen.crops.calc matches 1 run function gen:crops/internal/register/start