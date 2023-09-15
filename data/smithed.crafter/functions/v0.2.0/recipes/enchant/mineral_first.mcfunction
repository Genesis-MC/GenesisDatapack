
data modify block ~ ~ ~ Items[2].Count set from block ~ ~ ~ Items[1].Count
data modify block ~ ~ ~ Items[2].id set from block ~ ~ ~ Items[1].id
data modify block ~ ~ ~ Items[2].tag set from block ~ ~ ~ Items[1].tag

data modify block ~ ~ ~ Items[2].tag.Enchantments append from block ~ ~ ~ Items[0].tag.StoredEnchantments[]
