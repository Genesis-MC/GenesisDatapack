scoreboard players set #mode gen.temp 0
execute if entity @s[tag=gen.dev.debug] run scoreboard players set #mode gen.temp 1
execute if entity @s[tag=gen.dev.debug.all] run scoreboard players set #mode gen.temp 2
scoreboard players add #mode gen.temp 1
execute if score #mode gen.temp matches 3.. run scoreboard players set #mode gen.temp 0


execute if score #mode gen.temp matches 0 run tag @s remove gen.dev.debug
execute if score #mode gen.temp matches 0 run tag @s remove gen.dev.debug.all
execute if score #mode gen.temp matches 0 run tellraw @s {"text":"[Gen Debug]: off"}

execute if score #mode gen.temp matches 1 run tag @s add gen.dev.debug
execute if score #mode gen.temp matches 1 run tellraw @s {"text":"[Gen Debug]: normal"}

execute if score #mode gen.temp matches 2 run tag @s add gen.dev.debug.all
execute if score #mode gen.temp matches 2 run tellraw @s {"text":"[Gen Debug]: all"}

execute if score #mode gen.temp matches 0 run playsound minecraft:block.beacon.deactivate player @s ~ ~ ~ 1 2
execute if score #mode gen.temp matches 1.. run playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 1 2

data modify storage gen:temp to_modify set value []
data modify storage gen:temp to_modify append from entity @s Inventory[{id:"minecraft:warped_fungus_on_a_stick",tag:{gen:{on_click:{dev:{dev_stone:1b}}}}}]

data modify storage gen:core item_nbt set value {CustomModelData:982001}
execute if score #mode gen.temp matches 1 run data modify storage gen:core item_nbt set value {CustomModelData:982002}
execute if score #mode gen.temp matches 2 run data modify storage gen:core item_nbt set value {CustomModelData:982003}

execute if data storage gen:temp to_modify[0] run function gen:dev/internal/dev_stone/modify_dev_stones_loop