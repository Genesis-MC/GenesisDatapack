
#First remove all passives
advancement revoke @s only gen:passive

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
#Harbinger of Winter
execute if entity @s[nbt={SelectedItem:{tag:{gen:{name:"Harbinger of Winter"}}}}] run advancement grant @s only gen:passive frostbite
#Saber Crimson
execute if entity @s[nbt={SelectedItem:{tag:{gen:{name:"Saber Crimson"}}}}] run advancement grant @s only gen:passive crimson_pact
#Saber Warped
execute if entity @s[nbt={SelectedItem:{tag:{gen:{name:"Saber Warped"}}}}] run advancement grant @s only gen:passive warped_pact
#Vorpol
execute if entity @s[nbt={SelectedItem:{tag:{gen:{name:"Vorpol"}}}}] run advancement grant @s only gen:passive time_dilation
execute if entity @s[nbt={SelectedItem:{tag:{gen:{name:"Vorpol"}}}},tag=!gen.passive.time_dilation] run function gen:gear/internal/passives/increase/time_dilation {val:400} 

##Armorsets
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{gen:{name:"Shaded Helmet"}}}]}] run function gen:gear/internal/set_bonus/shaded
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{gen:{name:"Shaded Chestplate"}}}]}] run function gen:gear/internal/set_bonus/shaded
execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{gen:{name:"Shaded Leggings"}}}]}] run function gen:gear/internal/set_bonus/shaded
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"Shaded Boots"}}}]}] run function gen:gear/internal/set_bonus/shaded

execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{gen:{name:"Voidbreach Helmet"}}}]}] run function gen:gear/internal/set_bonus/voidbreach
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{gen:{name:"Voidbreach Chestplate"}}}]}] run function gen:gear/internal/set_bonus/voidbreach
execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{gen:{name:"Voidbreach Leggings"}}}]}] run function gen:gear/internal/set_bonus/voidbreach
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"Voidbreach Boots"}}}]}] run function gen:gear/internal/set_bonus/voidbreach