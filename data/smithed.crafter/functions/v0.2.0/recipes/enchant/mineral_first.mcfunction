
#Sets mainhand item of armorstand to the item being enchanted execute unless data entity @s HandItems[0] run 
data modify entity @s HandItems[0] set from block ~ ~ ~ Items[1]
#Offhand is set to mineral
data modify entity @s HandItems[1] set from block ~ ~ ~ Items[0]

item replace block ~ ~ ~ container.16 with air
#Apply enchants
data modify entity @s HandItems[1].tag.Enchantments append from entity @s HandItems[1].tag.StoredEnchantments[]
item modify entity @s weapon.mainhand gen:enchant_mineral/fix_duplicate_enchants
data modify entity @s HandItems[0].tag.Enchantments append from entity @s HandItems[1].tag.Enchantments[]
#Set items back into the crafter from the armorstands handitems
data modify block ~ ~ ~ Items append from entity @s HandItems[0]
data modify block ~ ~ ~ Items[0].Slot set value 16
#Clear armorstands handitems
data modify entity @s HandItems set value []

