execute unless predicate gen:workstation/cooking_pot/can_place run function gen:phead/api/cannot_place
execute unless predicate gen:workstation/cooking_pot/can_place run return 0

execute positioned ~ ~-1.0625 ~ if entity @e[type=item_display,tag=gen.workstation.root,distance=..0.1] run function gen:phead/api/cannot_place
execute positioned ~ ~-1.0625 ~ if entity @e[type=item_display,tag=gen.workstation.root,distance=..0.1] run return 0

setblock ~ ~ ~ air
$execute positioned ~ ~-1.0625 ~ run summon item_display ~ ~ ~ {Rotation:[$(cardinal_direction)f,0.0f],Tags:["gen.workstation.root","gen.workstation.type.cooking_pot","gen.workstation.shake_on_suffer"],item:{Count:1b,id:"minecraft:jigsaw",tag:{CustomModelData:982001}},Passengers:[{id:"minecraft:marker",Tags:["gen.workstation.data","gen.workstation.type.cooking_pot"],data:{workstation:{destroy:{drop_loot:"gen:workstation/cooking_pot",command:"function gen:workstation/cooking_pot/api/destroy"}}}},{id:"minecraft:interaction",width:1f,height:0.8125f,response:1b,Tags:["gen.workstation.interaction","gen.interaction","gen.workstation.type.cooking_pot"]}]}