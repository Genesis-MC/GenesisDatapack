data modify storage gen:phead scan_head set value {}
data modify storage gen:phead scan_head.name set from entity @s Item.tag.SkullOwner.Name
data modify storage gen:phead scan_head.namespace set string storage gen:phead scan_head.name 0 8
execute if data storage gen:phead scan_head{namespace:"genesis."} run function gen:phead/data/scan_head_item