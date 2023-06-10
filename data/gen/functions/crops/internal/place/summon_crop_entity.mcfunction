# called on a new item_display

data modify storage gen:crops EntityData set value {Tags:["gen.crops","gen.crops.crop_entity","gen.crops.crop_entity.growing"]}
data modify storage gen:crops EntityData.item set from storage gen:crops crop_definition.display.models[0]
data modify storage gen:crops EntityData.item.tag.genesis.crops.crop_data set value {}
data modify storage gen:crops EntityData.item.tag.genesis.crops.crop_data.id set from storage gen:crops crop_definition.id

data modify entity @s {} merge from storage gen:crops EntityData
scoreboard players


execute unless entity @e[type=marker,tag=gen.crops.ticker_entity,distance=..2.2] summon marker run function gen:crops/internal/place/summon_ticker_entity