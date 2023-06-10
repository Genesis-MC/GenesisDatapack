data modify storage gen:crops EntityData set value {Tags:["gen.crops","gen.crops.ticker_entity","gen.time.schedule_ticker"]}
data modify storage gen:crops EntityData.Pos set from entity @s Pos
execute store result score #coord gen.crops.calc run data get storage gen:crops EntityData.Pos[0] 0.25
scoreboard players set #op gen.crops.calc 4
scoreboard players operation #coord gen.crops.calc *= #op gen.crops.calc
scoreboard players add #coord gen.crops.calc 2
execute store result storage gen:crops EntityData.Pos[0] double 1 run scoreboard players get #coord gen.crops.calc
execute store result score #coord gen.crops.calc run data get storage gen:crops EntityData.Pos[2] 0.25
scoreboard players set #op gen.crops.calc 4
scoreboard players operation #coord gen.crops.calc *= #op gen.crops.calc
scoreboard players add #coord gen.crops.calc 2
execute store result storage gen:crops EntityData.Pos[2] double 1 run scoreboard players get #coord gen.crops.calc

data modify entity @s {} merge from storage gen:crops EntityData