scoreboard players set #loot_table_bonus gen.crops.calc 0

execute if block ~ ~1 ~ minecraft:moving_piston run setblock ~ ~1 ~ air
data modify storage gen:crops crop_data set from entity @s item.tag.genesis.crops.crop_data
function gen:crops/internal/grow/get_crop_definition

execute as @p[distance=..8,scores={gen.crops.mined_sunflower=1..}] run function gen:crops/internal/mine/player_mined_crop

function gen:crops/internal/mine/drop_seed
execute if entity @s[tag=gen.crops.crop_entity.fully_grown] run function gen:crops/internal/mine/drop_loot
kill @s