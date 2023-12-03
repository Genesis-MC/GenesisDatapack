
#Mineral crushing into crystal dust
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 2 if data storage smithed.crafter:input {recipe:[{id:"minecraft:amethyst_shard",Count:1b,tag:{gen:{mineral:1b}}},{id:"minecraft:stone_axe",Count:1b,tag:{gen:{type:"Mallet"}}}]} run function smithed.crafter:v0.2.0/recipes/crystal_dust/mallet_and_mineral
#Mineral enchant system
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 2 if data storage smithed.crafter:input {recipe:[{id:"minecraft:amethyst_shard",Count:1b,tag:{gen:{mineral:1b}}},{item_tag:["#gen:enchantable"],Count:1b}]} run function smithed.crafter:v0.2.0/recipes/enchant/check_item_order

#Cornstarch
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 1 if data storage smithed.crafter:input {recipe:[{id:"minecraft:tropical_fish",Count:1b,tag:{gen:{name:"Corncob"}}}]} run loot replace block ~ ~ ~ container.16 loot gen:food/cornstarch
#Metal Alloy
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 4 if data storage smithed.crafter:input {recipe:[{id:"minecraft:copper_ingot",Count:1b},{id:"minecraft:gold_ingot",Count:1b},{id:"minecraft:iron_block",Count:1b},{id:"minecraft:lava_bucket",Count:1b}]} run loot replace block ~ ~ ~ container.16 loot gen:ingredients/metal_alloy
#Netherite Sediment
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 3 if data storage smithed.crafter:input {recipe:[{id:"minecraft:netherite_scrap",Count:1b},{id:"minecraft:basalt",Count:1b},{id:"minecraft:lava_bucket",Count:1b}]} run loot replace block ~ ~ ~ container.16 loot gen:professions/mineralogy/minerals/netherite_sedimentx2