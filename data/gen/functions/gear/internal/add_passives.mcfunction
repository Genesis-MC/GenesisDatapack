
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
#Space Helmets
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{gen:{name:"Blue Space Helmet"}}}]}] run advancement grant @s only gen:passive suspicious_presence
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{gen:{name:"Red Space Helmet"}}}]}] run advancement grant @s only gen:passive suspicious_presence
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{gen:{name:"Greed Space Helmet"}}}]}] run advancement grant @s only gen:passive suspicious_presence
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{gen:{name:"Yellow Space Helmet"}}}]}] run advancement grant @s only gen:passive suspicious_presence
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{gen:{name:"Pink Space Helmet"}}}]}] run advancement grant @s only gen:passive suspicious_presence


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

execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{gen:{name:"Apprentice Hat"}}}]}] run function gen:gear/internal/set_bonus/apprentice
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{gen:{name:"Apprentice Robe"}}}]}] run function gen:gear/internal/set_bonus/apprentice
execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{gen:{name:"Apprentice Trousers"}}}]}] run function gen:gear/internal/set_bonus/apprentice
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"Apprentice Boots"}}}]}] run function gen:gear/internal/set_bonus/apprentice

execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{gen:{name:"Mage Hat"}}}]}] run function gen:gear/internal/set_bonus/mage
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{gen:{name:"Mage Robe"}}}]}] run function gen:gear/internal/set_bonus/mage
execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{gen:{name:"Mage Trousers"}}}]}] run function gen:gear/internal/set_bonus/mage
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"Mage Boots"}}}]}] run function gen:gear/internal/set_bonus/mage

execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{gen:{name:"Archmage Hat"}}}]}] run function gen:gear/internal/set_bonus/archmage
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{gen:{name:"Archmage Robe"}}}]}] run function gen:gear/internal/set_bonus/archmage
execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{gen:{name:"Archmage Trousers"}}}]}] run function gen:gear/internal/set_bonus/archmage
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"Archmage Boots"}}}]}] run function gen:gear/internal/set_bonus/archmage

#Arcanist
execute as @a[advancements={gen:passive={apprentice4=true}},tag=!gen.passive.arcanist_apprentice] run function gen:gear/internal/passives/increase/arcanist_apprentice
execute as @a[tag=gen.passive.arcanist_apprentice,advancements={gen:passive={apprentice4=false}}] run function gen:gear/internal/passives/decrease/arcanist_apprentice
execute as @a[advancements={gen:passive={mage3=true}},tag=!gen.passive.arcanist_mage] run function gen:gear/internal/passives/increase/arcanist_mage
execute as @a[tag=gen.passive.arcanist_mage,advancements={gen:passive={mage3=false}}] run function gen:gear/internal/passives/decrease/arcanist_mage
execute as @a[advancements={gen:passive={archmage2=true}},tag=!gen.passive.arcanist_archmage] run function gen:gear/internal/passives/increase/arcanist_archmage
execute as @a[tag=gen.passive.arcanist_archmage,advancements={gen:passive={archmage2=false}}] run function gen:gear/internal/passives/decrease/arcanist_archmage
#Riptide
execute if entity @s[nbt={SelectedItem:{tag:{gen:{name:"Riptide"}}}}] run scoreboard players add @s gen.class.elemental 1
