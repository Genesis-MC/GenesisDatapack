scoreboard players set #damage gen.temp 0
scoreboard players operation #damage gen.temp = @s gen.bth.damage_taken
scoreboard players operation #damage gen.temp /= #10 gen.const
scoreboard players set @s gen.bth.damage_taken 0
execute if score #attacker gen.temp matches 1 on attacker run function gen:gear/internal/bth/get_entity_damage
scoreboard players set #attacker gen.temp 0
execute if predicate gen:gear/bth/wearying_unbreakable_helmet run return 0


scoreboard players operation #damage gen.temp /= #4 gen.const

execute if score #damage gen.temp matches 0 run scoreboard players set #damage gen.temp 1
data modify storage gen:temp temp set from entity @s Inventory[{Slot:103b}].tag.HelmetData.Original.tag.HelmetData
execute store result score #helmet_damage gen.temp run data get storage gen:temp temp.Damage
execute store result score #max_damage gen.temp run data get storage gen:temp temp.MaxDamage
execute store result storage gen:gear Damage int 1 run scoreboard players operation #damage gen.temp += #helmet_damage gen.temp
execute if score #max_damage gen.temp matches 0 run scoreboard players set #max_damage gen.temp 363
execute if score #helmet_damage gen.temp >= #max_damage gen.temp run function gen:gear/internal/bth/destroy_helmet
scoreboard players operation #state gen.temp = @s gen.bth.wearing_block_helmet
scoreboard players set @s gen.bth.wearing_block_helmet 0
item modify entity @s armor.head gen:gear/bth/merge_damage
scoreboard players operation @s gen.bth.wearing_block_helmet = #state gen.temp