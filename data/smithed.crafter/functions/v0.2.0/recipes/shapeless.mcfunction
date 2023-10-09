
#Mineral crushing into crystal dust
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 2 if data storage smithed.crafter:input {recipe:[{id:"minecraft:amethyst_shard",Count:1b,tag:{gen:{mineral:1b}}},{id:"minecraft:stone_axe",Count:1b,tag:{gen:{type:"Mallet"}}}]} run function smithed.crafter:v0.2.0/recipes/crystal_dust/mallet_and_mineral
#Mineral enchant system
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 2 if data storage smithed.crafter:input {recipe:[{id:"minecraft:amethyst_shard",Count:1b,tag:{gen:{mineral:1b}}},{item_tag:["#gen:enchantable"],Count:1b}]} run function smithed.crafter:v0.2.0/recipes/enchant/check_item_order

#Borscht
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 5 if data storage smithed.crafter:input {recipe:[{id:"minecraft:bowl",Count:1b},{id:"minecraft:potato",Count:1b},{id:"minecraft:beetroot",Count:1b},{id:"minecraft:iron_nugget",Count:1b,tag:{gen:{name:"Salt"}}},{id:"minecraft:tropical_fish",Count:1b,tag:{gen:{name:"Heartbeet"}}}]} run loot replace block ~ ~ ~ container.16 loot gen:food/borscht