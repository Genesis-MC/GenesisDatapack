
#First remove all passives
advancement revoke @s only gen:passive
#Also set gear class counters to 0
scoreboard players set @s gen.class.elemental 0

##Armor
#Mountain-Treader Boots
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"mountaintreader_boots"}}}]}] run advancement grant @s only gen:passive unfetteredI
#Dungeon-Treader Boots
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"phantomtreader_boots"}}}]}] run advancement grant @s only gen:passive unfetteredI
#Cloud-Treader Boots
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"cloudtreader_boots"}}}]}] run advancement grant @s only gen:passive unfetteredI
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"cloudtreader_boots"}}}]}] run advancement grant @s only gen:passive featherweight
#Terra-Treader Boots
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"terratreader_boots"}}}]}] run advancement grant @s only gen:passive unfetteredII
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"terratreader_boots"}}}]}] run advancement grant @s only gen:passive featherweight
#7-League Boots
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"7league_boots"}}}]}] run advancement grant @s only gen:passive unfetteredII
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"7league_boots"}}}]}] run advancement grant @s only gen:passive featherweight
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"7league_boots"}}}]}] run advancement grant @s only gen:passive supreme_speed
#Hunter's Vest
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{gen:{name:"hunters_vest"}}}]}] run advancement grant @s only gen:passive swiftblade
#Ranger's Vest
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{gen:{name:"rangers_vest"}}}]}] run advancement grant @s only gen:passive swiftblade
#Space Helmets
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{gen:{name:"blue_spacehelmet"}}}]}] run advancement grant @s only gen:passive suspicious_presence
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{gen:{name:"red_spacehelmet"}}}]}] run advancement grant @s only gen:passive suspicious_presence
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{gen:{name:"green_spacehelmet"}}}]}] run advancement grant @s only gen:passive suspicious_presence
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{gen:{name:"yellow_spacehelmet"}}}]}] run advancement grant @s only gen:passive suspicious_presence
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{gen:{name:"pink_spacehelmet"}}}]}] run advancement grant @s only gen:passive suspicious_presence


##Mainhand Items
#Recluse Fang
execute if entity @s[nbt={SelectedItem:{tag:{gen:{name:"recluse_fang"}}}}] run advancement grant @s only gen:passive venomous1
#Venomlash Fang
execute if entity @s[nbt={SelectedItem:{tag:{gen:{name:"venomlash_fang"}}}}] run advancement grant @s only gen:passive venomous2
execute if entity @s[nbt={SelectedItem:{tag:{gen:{name:"venomlash_fang"}}}}] run advancement grant @s only gen:passive frenzy
#Overgrown Greatsword
execute if entity @s[nbt={SelectedItem:{tag:{gen:{name:"overgrown_greatsword"}}}}] run advancement grant @s only gen:passive lifeline1
#Frostfang
execute if entity @s[nbt={SelectedItem:{tag:{gen:{name:"frostfang"}}}}] run advancement grant @s only gen:passive frostbite
#Harbinger of Winter
execute if entity @s[nbt={SelectedItem:{tag:{gen:{name:"harbinger_of_winter"}}}}] run advancement grant @s only gen:passive frostbite
#Hailstone Blade
execute if entity @s[nbt={SelectedItem:{tag:{gen:{name:"hailstone_blade"}}}}] run advancement grant @s only gen:passive frostbite
#Saber Crimson
execute if entity @s[nbt={SelectedItem:{tag:{gen:{name:"saber_crimson"}}}}] run advancement grant @s only gen:passive crimson_pact
#Saber Warped
execute if entity @s[nbt={SelectedItem:{tag:{gen:{name:"saber_warped"}}}}] run advancement grant @s only gen:passive warped_pact
#Vorpol
execute if entity @s[nbt={SelectedItem:{tag:{gen:{name:"vorpol"}}}}] run advancement grant @s only gen:passive time_dilation
execute if entity @s[nbt={SelectedItem:{tag:{gen:{name:"vorpol"}}}}] run function gen:gear/internal/passives/increase/time_dilation 
#Fading Dusk
execute if entity @s[nbt={SelectedItem:{tag:{gen:{name:"fading_dusk"}}}}] run advancement grant @s only gen:passive nightfall

##Stance Swap
execute if entity @s[nbt={SelectedItem:{tag:{gen:{name:"glaive"}}}}] run advancement grant @s only gen:passive active_stance_swap_onslaught
execute if entity @s[nbt={SelectedItem:{tag:{gen:{name:"zweihander"}}}}] run advancement grant @s only gen:passive active_stance_swap_onslaught


##Armorsets
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{gen:{name:"steel_andure_helmet"}}}]}] run function gen:gear/internal/set_bonus/steelandure
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{gen:{name:"steel_andure_chestplate"}}}]}] run function gen:gear/internal/set_bonus/steelandure
execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{gen:{name:"steel_andure_leggings"}}}]}] run function gen:gear/internal/set_bonus/steelandure
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"steel_andure_boots"}}}]}] run function gen:gear/internal/set_bonus/steelandure
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{gen:{name:"reinforced_steel_andure_helmet"}}}]}] run function gen:gear/internal/set_bonus/steelandure
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{gen:{name:"reinforced_steel_andure_chestplate"}}}]}] run function gen:gear/internal/set_bonus/steelandure
execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{gen:{name:"reinforced_steel_andure_leggings"}}}]}] run function gen:gear/internal/set_bonus/steelandure
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"reinforced_steel_andure_boots"}}}]}] run function gen:gear/internal/set_bonus/steelandure

execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{gen:{name:"shaded_helmet"}}}]}] run function gen:gear/internal/set_bonus/shaded
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{gen:{name:"shaded_chestplate"}}}]}] run function gen:gear/internal/set_bonus/shaded
execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{gen:{name:"shaded_leggings"}}}]}] run function gen:gear/internal/set_bonus/shaded
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"shaded_boots"}}}]}] run function gen:gear/internal/set_bonus/shaded

execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{gen:{name:"voidbreach_helmet"}}}]}] run function gen:gear/internal/set_bonus/voidbreach
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{gen:{name:"voidbreach_chestplate"}}}]}] run function gen:gear/internal/set_bonus/voidbreach
execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{gen:{name:"voidbreach_leggings"}}}]}] run function gen:gear/internal/set_bonus/voidbreach
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"voidbreach_boots"}}}]}] run function gen:gear/internal/set_bonus/voidbreach

execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{gen:{name:"frostveil_helmet"}}}]}] run function gen:gear/internal/set_bonus/frostveil
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{gen:{name:"frostveil_chestplate"}}}]}] run function gen:gear/internal/set_bonus/frostveil
execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{gen:{name:"frostveil_leggings"}}}]}] run function gen:gear/internal/set_bonus/frostveil
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"frostveil_boots"}}}]}] run function gen:gear/internal/set_bonus/frostveil

execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{gen:{name:"apprentice_hat"}}}]}] run function gen:gear/internal/set_bonus/apprentice
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{gen:{name:"apprentice_robe"}}}]}] run function gen:gear/internal/set_bonus/apprentice
execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{gen:{name:"apprentice_trousers"}}}]}] run function gen:gear/internal/set_bonus/apprentice
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"apprentice_boots"}}}]}] run function gen:gear/internal/set_bonus/apprentice

execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{gen:{name:"mage_hat"}}}]}] run function gen:gear/internal/set_bonus/mage
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{gen:{name:"mage_robe"}}}]}] run function gen:gear/internal/set_bonus/mage
execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{gen:{name:"mage_trousers"}}}]}] run function gen:gear/internal/set_bonus/mage
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"mage_boots"}}}]}] run function gen:gear/internal/set_bonus/mage

execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{gen:{name:"archmage_hat"}}}]}] run function gen:gear/internal/set_bonus/archmage
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{gen:{name:"archmage_robe"}}}]}] run function gen:gear/internal/set_bonus/archmage
execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{gen:{name:"archmage_trousers"}}}]}] run function gen:gear/internal/set_bonus/archmage
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"archmage_boots"}}}]}] run function gen:gear/internal/set_bonus/archmage

execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{gen:{name:"dreadnaught_helmet"}}}]}] run function gen:gear/internal/set_bonus/dreadnaught
execute if entity @s[nbt={Inventory:[{Slot:102b,tag:{gen:{name:"dreadnaught_chestplate"}}}]}] run function gen:gear/internal/set_bonus/dreadnaught
execute if entity @s[nbt={Inventory:[{Slot:101b,tag:{gen:{name:"dreadnaught_leggings"}}}]}] run function gen:gear/internal/set_bonus/dreadnaught
execute if entity @s[nbt={Inventory:[{Slot:100b,tag:{gen:{name:"dreadnaught_boots"}}}]}] run function gen:gear/internal/set_bonus/dreadnaught

#Arcanist
execute as @a[advancements={gen:passive={apprentice4=true}},tag=!gen.passive.arcanist_apprentice] run function gen:gear/internal/passives/increase/arcanist_apprentice
execute as @a[tag=gen.passive.arcanist_apprentice,advancements={gen:passive={apprentice4=false}}] run function gen:gear/internal/passives/decrease/arcanist_apprentice
execute as @a[advancements={gen:passive={mage3=true}},tag=!gen.passive.arcanist_mage] run function gen:gear/internal/passives/increase/arcanist_mage
execute as @a[tag=gen.passive.arcanist_mage,advancements={gen:passive={mage3=false}}] run function gen:gear/internal/passives/decrease/arcanist_mage
execute as @a[advancements={gen:passive={archmage2=true}},tag=!gen.passive.arcanist_archmage] run function gen:gear/internal/passives/increase/arcanist_archmage
execute as @a[tag=gen.passive.arcanist_archmage,advancements={gen:passive={archmage2=false}}] run function gen:gear/internal/passives/decrease/arcanist_archmage
#Riptide
execute if entity @s[nbt={SelectedItem:{tag:{gen:{name:"riptide"}}}}] run scoreboard players add @s gen.class.elemental 1
