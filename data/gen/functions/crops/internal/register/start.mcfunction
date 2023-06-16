tellraw @a[tag=gen.dev.debug] ["",{"text":"gen/crops -> ","color":"#CBBECB"},{"text":"Begin building registry","color":"yellow"}]

data modify storage gen:crops registry set value {}
data modify storage gen:crops registry.crop_definitions set value []
data modify storage gen:crops read_to_register set from storage gen:crops to_register
execute summon item_display run function gen:crops/internal/register/on_item_display
data remove storage gen:crops read_to_register
data modify storage gen:crops registry.ids set value []
data modify storage gen:crops registry.ids append from storage gen:crops registry.crop_definitions[].id

tellraw @a[tag=gen.dev.debug] ["",{"text":"gen/crops -> ","color":"#CBBECB"},{"text":"Finished building ","color":"yellow"},{"text":"registry","color":"aqua","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"storage":"gen:crops","nbt":"registry.ids"}]}}]