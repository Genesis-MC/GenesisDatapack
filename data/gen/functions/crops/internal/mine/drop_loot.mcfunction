execute positioned ~ -1000 ~ run summon slime ~ ~ ~ {UUID:[I;1737561129,1710313384,-2072930538,-1690262819]}
data modify entity 67911429-65f1-4fa8-8471-97169b40a2dd DeathLootTable set from storage gen:crops crop_definition.harvest.loot_table
loot spawn ~ ~ ~ kill 67911429-65f1-4fa8-8471-97169b40a2dd

data modify entity 67911429-65f1-4fa8-8471-97169b40a2dd DeathLootTable set value "minecraft:empty"
kill 67911429-65f1-4fa8-8471-97169b40a2dd