tellraw @a {"nbt":"registry_item","storage":"gen:crops"}
execute store result score #stages gen.crops.calc run data get storage gen:crops registry_item.growth.stages 1
scoreboard players remove #stages gen.crops.calc 1
execute store result score #min_time gen.crops.calc run data get storage gen:crops registry_item.growth.time.min 1
execute store result score #max_time gen.crops.calc run data get storage gen:crops registry_item.growth.time.max 1
scoreboard players operation #min_time gen.crops.calc *= #stages gen.crops.calc
scoreboard players operation #max_time gen.crops.calc *= #stages gen.crops.calc

scoreboard players set #op gen.crops.calc 1200
scoreboard players operation #min_time gen.crops.calc /= #op gen.crops.calc
scoreboard players operation #max_time gen.crops.calc /= #op gen.crops.calc

data modify storage gen:crops resolve_text set value '{"text":"Growth time: ","color":"gray","italic":false,"extra":[{"score":{"name":"#min_time","objective":"gen.crops.calc"}},{"text":" min - "},{"score":{"name":"#max_time","objective":"gen.crops.calc"}},{"text":" min"}]}'
loot replace entity @s container.0 loot gen:crops/resolve_text
data modify storage gen:crops registry_item.seed_item.tag.display.Lore prepend from entity @s item.tag.display.Name