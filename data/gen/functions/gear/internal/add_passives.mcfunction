
#First remove all passives
advancement revoke @s only gen:passive

#Add passives for each gear
# use a predicate since it doesnt serilaze all the NBT of the inventory when checking armor slots or hand slots

#Test Gear
#/give @a iron_boots{gen:{stat:{armor:25},name:"TESTING"},AttributeModifiers:[{AttributeName:"minecraft:generic.luck",Name:"tungsten.feet",Amount:-0.000000000001,Operation:0,UUID:[I;12,42069,-0,15],Slot:"feet"}]} 
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"TESTING"}}}]}] run advancement grant @s only gen:passive unfetteredI
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"TESTING"}}}]}] run advancement grant @s only gen:passive unfetteredII
#Mountain-Treader Boots
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"Mountain-Treader Boots"}}}]}] run advancement grant @s only gen:passive unfetteredI
#Dungeon-Treader Boots
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"Dungeon-Treader Boots"}}}]}] run advancement grant @s only gen:passive unfetteredI
#Cloud-Treader Boots
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"Cloud-Treader Boots"}}}]}] run advancement grant @s only gen:passive unfetteredI
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"Cloud-Treader Boots"}}}]}] run advancement grant @s only gen:passive featherweight
#Terra-Treader Boots
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"Terra-Treader Boots"}}}]}] run advancement grant @s only gen:passive unfetteredII
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"Terra-Treader Boots"}}}]}] run advancement grant @s only gen:passive featherweight
#7-League Boots
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"7-League Boots"}}}]}] run advancement grant @s only gen:passive unfetteredII
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"7-League Boots"}}}]}] run advancement grant @s only gen:passive featherweight
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"7-League Boots"}}}]}] run advancement grant @s only gen:passive supreme_speed