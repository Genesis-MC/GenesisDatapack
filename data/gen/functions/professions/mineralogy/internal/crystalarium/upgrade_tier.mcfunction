
execute if entity @s[tag=Tier4,nbt={HandItems:[{tag:{gen:{name:"Cerulean Enhancement Crystal"}}},{}]}] run tag @s add Tier5
execute if entity @s[tag=Tier4,nbt={HandItems:[{tag:{gen:{name:"Cerulean Enhancement Crystal"}}},{}]}] run data merge entity @s {HandItems:[{id:"minecraft:iron_nugget",Count:1b,tag:{gen:{EnhancementCrystal:0b}}},{}],CustomName:'{"text":"Tier 5","bold":true,"italic":false}',DisabledSlots:4144959}
execute if entity @s[tag=Tier4,nbt={HandItems:[{tag:{gen:{EnhancementCrystal:0b}}},{}]}] at @s positioned ~-.1 ~ ~-.1 run data merge entity @e[type=block_display,limit=1,sort=nearest] {block_state:{Name:"minecraft:light_blue_stained_glass"}} 
execute if entity @s[tag=Tier4,nbt={HandItems:[{tag:{gen:{EnhancementCrystal:0b}}},{}]}] run tag @s remove Tier4

execute if entity @s[tag=Tier3,nbt={HandItems:[{tag:{gen:{name:"Crimson Enhancement Crystal"}}},{}]}] run tag @s add Tier4
execute if entity @s[tag=Tier3,nbt={HandItems:[{tag:{gen:{name:"Crimson Enhancement Crystal"}}},{}]}] run data merge entity @s {HandItems:[{id:"minecraft:iron_nugget",Count:1b,tag:{gen:{EnhancementCrystal:0b}}},{}],CustomName:'{"text":"Tier 4","bold":true,"italic":false}'}
execute if entity @s[tag=Tier3,nbt={HandItems:[{tag:{gen:{EnhancementCrystal:0b}}},{}]}] at @s positioned ~-.1 ~ ~-.1 run data merge entity @e[type=block_display,limit=1,sort=nearest] {block_state:{Name:"minecraft:red_stained_glass"}} 
execute if entity @s[tag=Tier3,nbt={HandItems:[{tag:{gen:{EnhancementCrystal:0b}}},{}]}] run tag @s remove Tier3

execute if entity @s[tag=Tier2,nbt={HandItems:[{tag:{gen:{name:"Pink Enhancement Crystal"}}},{}]}] run tag @s add Tier3
execute if entity @s[tag=Tier2,nbt={HandItems:[{tag:{gen:{name:"Pink Enhancement Crystal"}}},{}]}] run data merge entity @s {HandItems:[{id:"minecraft:iron_nugget",Count:1b,tag:{gen:{EnhancementCrystal:0b}}},{}],CustomName:'{"text":"Tier 3","bold":true,"italic":false}'}
execute if entity @s[tag=Tier2,nbt={HandItems:[{tag:{gen:{EnhancementCrystal:0b}}},{}]}] at @s positioned ~-.1 ~ ~-.1 run data merge entity @e[type=block_display,limit=1,sort=nearest] {block_state:{Name:"minecraft:pink_stained_glass"}} 
execute if entity @s[tag=Tier2,nbt={HandItems:[{tag:{gen:{EnhancementCrystal:0b}}},{}]}] run tag @s remove Tier2

execute if entity @s[tag=Tier1,nbt={HandItems:[{tag:{gen:{name:"Yellow Enhancement Crystal"}}},{}]}] run tag @s add Tier2
execute if entity @s[tag=Tier1,nbt={HandItems:[{tag:{gen:{name:"Yellow Enhancement Crystal"}}},{}]}] run data merge entity @s {HandItems:[{id:"minecraft:iron_nugget",Count:1b,tag:{gen:{EnhancementCrystal:0b}}},{}],CustomName:'{"text":"Tier 2","bold":true,"italic":false}'}
execute if entity @s[tag=Tier1,nbt={HandItems:[{tag:{gen:{EnhancementCrystal:0b}}},{}]}] at @s positioned ~-.1 ~ ~-.1 run data merge entity @e[type=block_display,limit=1,sort=nearest] {block_state:{Name:"minecraft:yellow_stained_glass"}}
execute if entity @s[tag=Tier1,nbt={HandItems:[{tag:{gen:{EnhancementCrystal:0b}}},{}]}] run tag @s remove Tier1

execute if entity @s[nbt={HandItems:[{tag:{gen:{EnhancementCrystal:0b}}},{}]}] at @s positioned ~ ~1 ~ run function gen:particles/circles/wax_off
execute if entity @s[nbt={HandItems:[{tag:{gen:{EnhancementCrystal:0b}}},{}]}] run data merge entity @s {HandItems:[{},{}]}
