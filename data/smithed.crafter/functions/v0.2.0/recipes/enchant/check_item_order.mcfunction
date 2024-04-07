
execute if data storage smithed.crafter:input {recipe:[{id:"minecraft:stone_axe",Count:1b,tag:{gen:{type:"Mallet"}}}]} run return 0

execute unless data block ~ ~ ~ Items[0].tag.gen.mineral run function smithed.crafter:v0.2.0/recipes/enchant/mineral_last
execute unless data block ~ ~ ~ Items[1].tag.gen.mineral run function smithed.crafter:v0.2.0/recipes/enchant/mineral_first
