
execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 2 if data storage smithed.crafter:input {recipe:[{id:"minecraft:amethyst_shard",Count:1b,tag:{gen:{mineral:1b}}},{id:"minecraft:wooden_axe",Count:1b,tag:{gen:{type:"Mallet"}}}]} run function smithed.crafter:v0.2.0/recipes/crystal_dust/mallet_and_mineral
#execute store result score @s smithed.data if entity @s[scores={smithed.data=0}] if score count smithed.data matches 2 if data storage smithed.crafter:input {recipe:[{id:"minecraft:amethyst_shard",Count:1b,tag:{gen:{mineral:1b}}},{item_tag:["#gen:enchantable"],Count:1b}]} run function smithed.crafter:v0.2.0/recipes/enchant_with_mineral