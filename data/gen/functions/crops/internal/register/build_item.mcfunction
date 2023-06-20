execute store result score #stages gen.crops.calc run data get storage gen:crops registry_item.growth.stages 1
scoreboard players remove #stages gen.crops.calc 1
execute store result score #min_time gen.crops.calc run data get storage gen:crops registry_item.growth.time.min 1
execute store result score #max_time gen.crops.calc run data get storage gen:crops registry_item.growth.time.max 1
scoreboard players operation #min_time gen.crops.calc *= #stages gen.crops.calc
scoreboard players operation #max_time gen.crops.calc *= #stages gen.crops.calc

scoreboard players set #op gen.crops.calc 1200
scoreboard players operation #min_time gen.crops.calc /= #op gen.crops.calc
scoreboard players operation #max_time gen.crops.calc /= #op gen.crops.calc


execute if data storage gen:crops registry_item.seed_item.preprocessing{show_growth_time:1b} run data modify storage gen:crops resolve_text set value '{"text":"Growth time: ","color":"gray","italic":false,"extra":[{"score":{"name":"#min_time","objective":"gen.crops.calc"}},{"text":" min - "},{"score":{"name":"#max_time","objective":"gen.crops.calc"}},{"text":" min"}]}'
execute if data storage gen:crops registry_item.seed_item.preprocessing{show_growth_time:1b} run loot replace entity @s container.0 loot gen:crops/resolve_text
execute if data storage gen:crops registry_item.seed_item.preprocessing{show_growth_time:1b} run data modify storage gen:crops registry_item.seed_item.tag.display.Lore prepend from entity @s item.tag.display.Name

execute if data storage gen:crops registry_item.seed_item.preprocessing{apply_default_skin:1b} run data modify storage gen:crops registry_item.seed_item.tag.SkullOwner merge value {Id:[I;-2117259736,1476084201,-2117594981,-1450309933],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjI0ODQ4OTI4NWVjOTM3MzVmMjNhOGYzNDU2OGFmMTIxMGU2YjViZDlmYjRlZjgwNzViY2Q5MjBiYTBkNTlmOCJ9fX0="}]}}

execute if data storage gen:crops registry_item.seed_item.preprocessing run data remove storage gen:crops registry_item.seed_item.preprocessing