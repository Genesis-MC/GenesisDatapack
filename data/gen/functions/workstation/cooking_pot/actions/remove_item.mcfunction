scoreboard players set #action gen.temp 1
execute unless data entity @s data.items[0] on vehicle run function gen:workstation/api/suffer
execute unless data entity @s data.items[0] run return 0

data modify storage gen:core give_item set from entity @s data.items[-1]
execute on vehicle on passengers if entity @s[type=interaction] on attacker at @s run function gen:core/api/item/give
execute store result score #item_count gen.temp if data entity @s data.items[]
execute align zxy positioned ~ ~1 ~ as @e[type=item_display,tag=gen.workstation.cooking_pot.ingredient,dx=0,dy=0,dz=0] if score @s gen.temp >= #item_count gen.temp run kill @s

data remove entity @s data.items[-1]