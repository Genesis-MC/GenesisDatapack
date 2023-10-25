
#First remove all passives
advancement revoke @s only gen:passive
#Also set gear class counters to 0
scoreboard players set @s gen.class.elemental 0

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
#Hunter's Vest
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{gen:{name:"Hunter's Vest"}}}]}] run advancement grant @s only gen:passive swiftblade
#Ranger's Vest
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{gen:{name:"Ranger's Vest"}}}]}] run advancement grant @s only gen:passive swiftblade

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
execute if entity @s[nbt={SelectedItem:{tag:{gen:{name:"Vorpol"}}}}] run function gen:gear/internal/passives/increase/time_dilation 
#Riptide
execute if entity @s[nbt={SelectedItem:{tag:{gen:{name:"Riptide"}}}}] run scoreboard players add @s gen.class.elemental 1

##Armorsets
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{gen:{name:"Shaded Helmet"}}}]}] run function gen:gear/internal/set_bonus/shaded
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{gen:{name:"Shaded Chestplate"}}}]}] run function gen:gear/internal/set_bonus/shaded
execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{gen:{name:"Shaded Leggings"}}}]}] run function gen:gear/internal/set_bonus/shaded
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"Shaded Boots"}}}]}] run function gen:gear/internal/set_bonus/shaded

execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{gen:{name:"Voidbreach Helmet"}}}]}] run function gen:gear/internal/set_bonus/voidbreach
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{gen:{name:"Voidbreach Chestplate"}}}]}] run function gen:gear/internal/set_bonus/voidbreach
execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{gen:{name:"Voidbreach Leggings"}}}]}] run function gen:gear/internal/set_bonus/voidbreach
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"Voidbreach Boots"}}}]}] run function gen:gear/internal/set_bonus/voidbreach

execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{gen:{name:"Frostveil Helmet"}}}]}] run function gen:gear/internal/set_bonus/frostveil
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{gen:{name:"Frostveil Chestplate"}}}]}] run function gen:gear/internal/set_bonus/frostveil
execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{gen:{name:"Frostveil Leggings"}}}]}] run function gen:gear/internal/set_bonus/frostveil
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"Frostveil Boots"}}}]}] run function gen:gear/internal/set_bonus/frostveil