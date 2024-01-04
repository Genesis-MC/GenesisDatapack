data modify storage gen:workstation cooking_pot.current_recipe set value "null"

## Template
#execute if data storage gen:workstation recipe.output{ingredients:1,items:[{id:"minecraft:",Count:1}]} run data modify storage gen:workstation cooking_pot.current_recipe set value {output_item:{id:"minecraft:",Count:1b,tag:{},time:100}

#Hashbrown
execute if data storage gen:workstation recipe.output{ingredients:3,items:[{id:"minecraft:potato",Count:3}]} run data modify storage gen:workstation cooking_pot.current_recipe set value {loot_table:"gen:food/hashbrown",time:100}
#Caramelized Apple
execute if data storage gen:workstation recipe.output{ingredients:3,items:[{id:"minecraft:apple",Count:1},{id:"minecraft:sugar",Count:1},{id:"minecraft:honey_bottle",Count:1}]} run data modify storage gen:workstation cooking_pot.current_recipe set value {loot_table:"gen:food/caramelized_apple",time:200}
#Salmon Stir-fry
execute if data storage gen:workstation recipe.output{ingredients:3,items:[{id:"minecraft:salmon",Count:1},{id:"minecraft:carrot",Count:1},{id:"minecraft:tropical_fish",Count:1,tag:{gen:{name:"tomato"}}}]} run data modify storage gen:workstation cooking_pot.current_recipe set value {loot_table:"gen:food/salmon_stirfry",time:80}
#Fried Calamari
execute if data storage gen:workstation recipe.output{ingredients:2,items:[{id:"minecraft:tropical_fish",Count:1,tag:{gen:{name:"calimari"}}},{id:"minecraft:structure_block",Count:1,tag:{gen:{name:"cornstarch"}}}]} run data modify storage gen:workstation cooking_pot.current_recipe set value {loot_table:"gen:food/fried_calamari",time:50}
#Prime Rib
execute if data storage gen:workstation recipe.output{ingredients:2,items:[{id:"minecraft:beef",Count:1,tag:{gen:{name:"prime_beef"}}},{id:"minecraft:structure_block",Count:1,tag:{gen:{name:"salt"}}}]} run data modify storage gen:workstation cooking_pot.current_recipe set value {loot_table:"gen:food/prime_rib",time:100}
#Borscht
execute if data storage gen:workstation recipe.output{ingredients:5,items:[{id:"minecraft:bowl",Count:1},{id:"minecraft:potato",Count:1},{id:"minecraft:beetroot",Count:1},{id:"minecraft:structure_block",Count:1,tag:{gen:{name:"salt"}}},{id:"minecraft:tropical_fish",Count:1,tag:{gen:{name:"heartbeet"}}}]} run data modify storage gen:workstation cooking_pot.current_recipe set value {loot_table:"gen:food/borscht",time:300}
#Stew of the Sea
execute if data storage gen:workstation recipe.output{ingredients:6,items:[{id:"minecraft:bowl",Count:1},{id:"minecraft:salmon",Count:1},{id:"minecraft:cod",Count:1},{id:"minecraft:tropical_fish",Count:1,tag:{gen:{name:"calimari"}}},{id:"minecraft:pufferfish",Count:1},{id:"minecraft:tropical_fish",Count:1}]} run data modify storage gen:workstation cooking_pot.current_recipe set value {loot_table:"gen:food/stew_of_the_sea",time:500}
#Truffle Mushroom Soup
execute if data storage gen:workstation recipe.output{ingredients:4,items:[{id:"minecraft:bowl",Count:1},{id:"minecraft:red_mushroom",Count:1},{id:"minecraft:brown_mushroom",Count:1},{id:"minecraft:baked_potato",Count:1,tag:{gen:{name:"truffle"}}}]} run data modify storage gen:workstation cooking_pot.current_recipe set value {loot_table:"gen:food/truffle_mushroom_soup",time:200}
#Violentil Salad
execute if data storage gen:workstation recipe.output{ingredients:3,items:[{id:"minecraft:tropical_fish",Count:1,tag:{gen:{name:"violentil"}}},{id:"minecraft:azalea_leaves",Count:1},{id:"minecraft:tropical_fish",Count:1,tag:{gen:{name:"tomato"}}}]} run data modify storage gen:workstation cooking_pot.current_recipe set value {loot_table:"gen:food/violentil_salad",time:80}
#Melon Candy
execute if data storage gen:workstation recipe.output{ingredients:3,items:[{id:"minecraft:melon_slice",Count:1},{id:"minecraft:sugar",Count:1},{id:"minecraft:structure_block",Count:1,tag:{gen:{name:"cornstarch"}}}]} run data modify storage gen:workstation cooking_pot.current_recipe set value {loot_table:"gen:food/melon_candy",time:50}
#Sakura Candy
execute if data storage gen:workstation recipe.output{ingredients:4,items:[{id:"minecraft:pink_petals",Count:1},{id:"minecraft:sugar",Count:1},{id:"minecraft:structure_block",Count:1,tag:{gen:{name:"cornstarch"}}},{id:"minecraft:honey_bottle",Count:1,tag:{gen:{name:"floral_nectar"}}}]} run data modify storage gen:workstation cooking_pot.current_recipe set value {loot_table:"gen:food/sakura_candy",time:50}
#Prismatic Candy
execute if data storage gen:workstation recipe.output{ingredients:3,items:[{id:"minecraft:structure_block",Count:1,tag:{gen:{name:"cornstarch"}}},{id:"minecraft:sugar",Count:1},{id:"minecraft:structure_block",Count:1,tag:{gen:{name:"pure_crystal"}}}]} run data modify storage gen:workstation cooking_pot.current_recipe set value {loot_table:"gen:food/prismatic_candy",time:50}