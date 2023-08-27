
#First remove all passives
advancement revoke @s only gen:passive

#Add passives for each gear
# use a predicate since it doesnt serilaze all the NBT of the inventory when checking armor slots or hand slots

##Armor
#Mountain-Treader Boots
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"Mountain-Treader Boots"}}}]}] run advancement grant @s only gen:passive unfetteredI
#Dungeon-Treader Boots
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"Phantom-Treader Boots"}}}]}] run advancement grant @s only gen:passive unfetteredI
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

##Mainhand Items
#Recluse Fang
execute if entity @s[nbt={SelectedItem:{tag:{gen:{name:"Recluse Fang"}}}}] run advancement grant @s only gen:passive venomous1
#Venomlash Fang
execute if entity @s[nbt={SelectedItem:{tag:{gen:{name:"Venomlash Fang"}}}}] run advancement grant @s only gen:passive venomous2
execute if entity @s[nbt={SelectedItem:{tag:{gen:{name:"Venomlash Fang"}}}}] run advancement grant @s only gen:passive frenzy
#Frostfang
execute if entity @s[nbt={SelectedItem:{tag:{gen:{name:"Frostfang"}}}}] run advancement grant @s only gen:passive frostbite
#Saber Crimson
execute if entity @s[nbt={SelectedItem:{tag:{gen:{name:"Saber Crimson"}}}}] run advancement grant @s only gen:passive crimson_pact
#Saber Warped
execute if entity @s[nbt={SelectedItem:{tag:{gen:{name:"Saber Warped"}}}}] run advancement grant @s only gen:passive warped_pact