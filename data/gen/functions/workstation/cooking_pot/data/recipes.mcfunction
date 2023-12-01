data modify storage gen:workstation cooking_pot.current_recipe set value "null"

execute if data storage gen:workstation recipe.output{ingredients:2,items:[{Count:1,id:"minecraft:sponge"},{Count:1,id:"minecraft:wet_sponge"}]} run data modify storage gen:workstation cooking_pot.current_recipe set value {output_item:{id:"minecraft:tnt",Count:1b},time:100,xp:100}

execute if data storage gen:workstation recipe.output{ingredients:2,items:[{Count:1,id:"minecraft:beef"},{Count:1,id:"minecraft:ice"}]} run data modify storage gen:workstation cooking_pot.current_recipe set value {output_item:{id:"minecraft:arrow",Count:1b},time:100,xp:100}