
execute unless data block ~ ~ ~ Items[2] run loot replace block ~ ~ ~ container.26 loot gen:dev/bamboo

execute unless data block ~ ~ ~ Items[0].tag.gen.mineral run function smithed.crafter:v0.2.0/recipes/enchant/mineral_last
execute unless data block ~ ~ ~ Items[1].tag.gen.mineral run function smithed.crafter:v0.2.0/recipes/enchant/mineral_first
