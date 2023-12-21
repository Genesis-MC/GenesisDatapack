scoreboard players set vanilla_saturation gen.temp 0
execute if data storage gen:temp eaten_item{id:"minecraft:tropical_fish"} run scoreboard players set vanilla_saturation gen.temp 1
execute if data storage gen:temp eaten_item{id:"minecraft:cookie"} run scoreboard players set vanilla_saturation gen.temp 2

execute store result score extra_saturation gen.temp run data get storage gen:temp eaten_item.tag.gen.on_eat.saturation 1
scoreboard players operation extra_saturation gen.temp -= vanilla_saturation gen.temp
scoreboard players remove extra_saturation gen.temp 1
execute unless score extra_saturation gen.temp matches 0.. run return 0
data modify storage gen:temp macro set value {level:0}
execute store result storage gen:temp macro.level int 1 run scoreboard players get extra_saturation gen.temp
function gen:food/internal/eat/apply_saturation with storage gen:temp macro