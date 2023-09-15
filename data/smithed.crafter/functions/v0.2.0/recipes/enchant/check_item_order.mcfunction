
execute unless data block ~ ~ ~ Items[2] run loot replace block ~ ~ ~ container.26 loot gen:dev/bamboo

execute unless data block ~ ~ ~ Items[0].tag.gen.mineral run function smithed.crafter:v0.2.0/recipes/enchant/mineral_last
execute unless data block ~ ~ ~ Items[1].tag.gen.mineral run function smithed.crafter:v0.2.0/recipes/enchant/mineral_first

data modify entity @s HandItems[0] set from block ~ ~ ~ Items[2]
item modify entity @s weapon.mainhand gen:enchant_mineral/fix_duplicate_enchants
data modify block ~ ~ ~ Items[2] set from entity @s HandItems[0]
data modify block ~ ~ ~ Items[0].Slot set value 16