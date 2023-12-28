scoreboard players set #seed gen.temp 1
execute unless data storage gen:temp used_items.offhand{id:"minecraft:player_head",tag:{genesis:{phead:{detect:1b}}}} run scoreboard players set #seed gen.temp 0

data remove storage gen:temp str
data modify storage gen:temp str set string storage gen:temp used_items.offhand.tag.SkullOwner.Name 0 24
execute unless data storage gen:temp {str:"genesis.block.crop.seed."} run scoreboard players set #seed gen.temp 0

execute if score #seed gen.temp matches 0 run tellraw @p {"text":"Hold a seed in your offhand."}
execute if score #seed gen.temp matches 0 run kill @s
execute if score #seed gen.temp matches 0 run return 0

### crop id ###
data modify storage gen:temp macro set value {}
data modify storage gen:temp macro.id set string storage gen:temp used_items.offhand.tag.SkullOwner.Name 24
function gen:crops/api/get_crop_definition with storage gen:temp macro
function gen:crops/api/get_final_model
data modify entity @s ArmorItems[3] set from storage gen:crops model
data modify entity @s ArmorItems[3].tag.feature_marker.crop_id set from storage gen:crops crop_definition.id

data modify entity @s Rotation set value [0f,0f]