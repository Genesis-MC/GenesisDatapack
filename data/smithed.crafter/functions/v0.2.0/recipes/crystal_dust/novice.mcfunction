scoreboard players set @s gen.temp 1
loot replace block ~ ~ ~ container.16 loot gen:ingredients/crystal_dust
#execute if data storage smithed.crafter:input {recipe:[{id:"minecraft:amethyst_shard",Count:1b,tag:{gen:{type:["Common"]}}}]} run 