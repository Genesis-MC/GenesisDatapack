
data modify block ~ ~ ~ Items[2].Count set from block ~ ~ ~ Items[0].Count
data modify block ~ ~ ~ Items[2].id set from block ~ ~ ~ Items[0].id
data modify block ~ ~ ~ Items[2].tag set from block ~ ~ ~ Items[0].tag

data modify block ~ ~ ~ Items[2].tag.Enchantments append from block ~ ~ ~ Items[1].tag.StoredEnchantments[]
data modify block ~ ~ ~ Items[2].Slot set value 16