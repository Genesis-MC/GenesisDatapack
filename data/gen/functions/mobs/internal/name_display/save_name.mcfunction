execute unless predicate gen:utils/equipment/mainhand run tag @s add gen.mobs.name_in_offhand
tag @s[tag=!gen.mobs.name_in_offhand] add gen.mobs.name_in_mainhand

data modify entity @s[tag=gen.mobs.name_in_mainhand,predicate=!gen:utils/equipment/mainhand] HandDropChances[0] set value 0.0f
item replace entity @s[tag=gen.mobs.name_in_mainhand,predicate=!gen:utils/equipment/mainhand] weapon.mainhand with stone_button{CustomModelData:4187132,Enchantments:[{}]} 1

#the enchantment glint is to prevent mobs from picking up shields
data modify entity @s[tag=gen.mobs.name_in_offhand,predicate=!gen:utils/equipment/offhand] HandDropChances[1] set value 0.0f
item replace entity @s[tag=gen.mobs.name_in_offhand,predicate=!gen:utils/equipment/offhand] weapon.offhand with stone_button{CustomModelData:4187132,Enchantments:[{}]} 1

execute as @s run item modify entity 0001e4dd-0000-ca49-0002-425300000000 container.0 gen:mobs/save_name
data modify entity @s[tag=gen.mobs.name_in_mainhand] HandItems[0].tag.gen.SavedMobName set from entity 0001e4dd-0000-ca49-0002-425300000000 item.tag.display.Name
data modify entity @s[tag=gen.mobs.name_in_offhand] HandItems[1].tag.gen.SavedMobName set from entity 0001e4dd-0000-ca49-0002-425300000000 item.tag.display.Name