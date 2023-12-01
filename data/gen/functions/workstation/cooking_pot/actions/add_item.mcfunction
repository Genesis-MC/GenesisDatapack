execute if data entity @s data.items[8] run return 0

scoreboard players set #action gen.temp 1

data modify storage gen:temp temp set value {}
data modify storage gen:temp temp.item set from storage gen:core run_with_item.item
data modify storage gen:temp temp.item.Count set value 1b
data modify entity @s data.items append from storage gen:temp temp.item
execute store result storage gen:temp temp.offsetx float 0.001 run random value -300..300
execute store result storage gen:temp temp.offsetz float 0.001 run random value -300..300
execute store result storage gen:temp temp.size float 0.001 run random value 350..500
execute store result storage gen:temp temp.yrotation float 0.001 run random value 0..360000
execute store result storage gen:temp temp.xrotation float 0.001 run random value 60000..90000

scoreboard players set #item_count gen.temp 0
execute store result score #item_count gen.temp if data entity @s data.items[]
execute align zxy positioned ~0.5 ~1.20 ~0.5 run function gen:workstation/cooking_pot/internal/add_item_display with storage gen:temp temp

return 1