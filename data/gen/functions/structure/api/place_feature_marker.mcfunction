data modify storage gen:temp used_items set value {}
data modify storage gen:temp used_items.mainhand set from entity @s SelectedItem
data modify storage gen:temp used_items.offhand set from entity @s Inventory[{Slot:-106b}]

execute as @e[type=armor_stand,tag=gen.structure.feature_marker.new,distance=..16,limit=1,sort=nearest] at @s run function gen:structure/internal/feature_marker/init

advancement revoke @s only gen:structure/place_feature_marker