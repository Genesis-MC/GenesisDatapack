data merge entity @s {item:{Count:1b,id:"minecraft:stone"},transformation:{scale:[0f,0f,0f]}}
function gen:core/internal/resolve_text/list/loop
data modify storage gen:core resolve_text_list set from entity @s item.tag.display.Lore
kill @s