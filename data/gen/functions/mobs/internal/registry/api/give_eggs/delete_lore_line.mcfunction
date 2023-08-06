data modify storage gen:temp temp2 set from storage gen:temp temp[-1]
data remove storage gen:temp temp[-1]

execute store success score #loop gen.temp if data storage gen:temp {temp2:'{"text":""}'} 
execute if score #loop gen.temp matches 1 run data remove entity @s Item.tag.display.Lore[-1]
execute if score #loop gen.temp matches 1 run function gen:mobs/internal/registry/api/give_eggs/delete_lore_line