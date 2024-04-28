
#First remove all passives
advancement revoke @s only gen:passive
advancement revoke @s only gen:item_name
#Also set gear class counters to 0
scoreboard players set @s gen.class.elemental 0

data remove storage gen:passive gear
data modify storage gen:passive gear.item_name set from entity @s SelectedItem.tag.gen.name
function gen:gear/internal/apply_passive with storage gen:passive gear
data remove storage gen:passive gear
data modify storage gen:passive gear.item_name set from entity @s Inventory[{Slot:103b}].tag.gen.name
function gen:gear/internal/apply_passive with storage gen:passive gear
data remove storage gen:passive gear
data modify storage gen:passive gear.item_name set from entity @s Inventory[{Slot:102b}].tag.gen.name
function gen:gear/internal/apply_passive with storage gen:passive gear
data remove storage gen:passive gear
data modify storage gen:passive gear.item_name set from entity @s Inventory[{Slot:101b}].tag.gen.name
function gen:gear/internal/apply_passive with storage gen:passive gear
data remove storage gen:passive gear
data modify storage gen:passive gear.item_name set from entity @s Inventory[{Slot:100b}].tag.gen.name
function gen:gear/internal/apply_passive with storage gen:passive gear

## Weapons + Standalone Armor
advancement grant @s only gen:item_name 
execute if entity @s[advancements={gen:item_name={mountaintreader_boots=true}}] run advancement grant @s only gen:passive unfetteredI
execute if entity @s[advancements={gen:item_name={phantomtreader_boots=true}}] run advancement grant @s only gen:passive unfetteredI
execute if entity @s[advancements={gen:item_name={cloudtreader_boots=true}}] run advancement grant @s only gen:passive unfetteredI
execute if entity @s[advancements={gen:item_name={cloudtreader_boots=true}}] run advancement grant @s only gen:passive featherweight
execute if entity @s[advancements={gen:item_name={terratreader_boots=true}}] run advancement grant @s only gen:passive unfetteredII
execute if entity @s[advancements={gen:item_name={terratreader_boots=true}}] run advancement grant @s only gen:passive featherweight
execute if entity @s[advancements={gen:item_name={7league_boots=true}}] run advancement grant @s only gen:passive unfetteredII
execute if entity @s[advancements={gen:item_name={7league_boots=true}}] run advancement grant @s only gen:passive featherweight
execute if entity @s[advancements={gen:item_name={7league_boots=true}}] run advancement grant @s only gen:passive supreme_speed
execute if entity @s[advancements={gen:item_name={hunters_vest=true}}] run advancement grant @s only gen:passive swiftblade
execute if entity @s[advancements={gen:item_name={rangers_vest=true}}] run advancement grant @s only gen:passive swiftblade
execute if entity @s[advancements={gen:item_name={blue_spacehelmet=true}}] run advancement grant @s only gen:passive suspicious_presence
execute if entity @s[advancements={gen:item_name={red_spacehelmet=true}}] run advancement grant @s only gen:passive suspicious_presence
execute if entity @s[advancements={gen:item_name={green_spacehelmet=true}}] run advancement grant @s only gen:passive suspicious_presence
execute if entity @s[advancements={gen:item_name={yellow_spacehelmet=true}}] run advancement grant @s only gen:passive suspicious_presence
execute if entity @s[advancements={gen:item_name={pink_spacehelmet=true}}] run advancement grant @s only gen:passive suspicious_presence
execute if entity @s[advancements={gen:item_name={ghastly_chestplate=true}}] run advancement grant @s only gen:passive steadfast
execute if entity @s[advancements={gen:item_name={ethereal_chestplate=true}}] run advancement grant @s only gen:passive steadfast
execute if entity @s[advancements={gen:item_name={recluse_fang=true}}] run advancement grant @s only gen:passive venomous1
execute if entity @s[advancements={gen:item_name={venomlash_fang=true}}] run advancement grant @s only gen:passive venomous2
execute if entity @s[advancements={gen:item_name={venomlash_fang=true}}] run advancement grant @s only gen:passive frenzy
execute if entity @s[advancements={gen:item_name={overgrown_greatsword=true}}] run advancement grant @s only gen:passive lifeline1
execute if entity @s[advancements={gen:item_name={frostfang=true}}] run advancement grant @s only gen:passive frostbite
execute if entity @s[advancements={gen:item_name={harbinger_of_winter=true}}] run advancement grant @s only gen:passive frostbite
execute if entity @s[advancements={gen:item_name={hailstone_blade=true}}] run advancement grant @s only gen:passive frostbite
execute if entity @s[advancements={gen:item_name={saber_crimson=true}}] run advancement grant @s only gen:passive crimson_pact
execute if entity @s[advancements={gen:item_name={saber_warped=true}}] run advancement grant @s only gen:passive warped_pact
execute if entity @s[advancements={gen:item_name={vorpol=true}}] run advancement grant @s only gen:passive time_dilation
execute if entity @s[advancements={gen:item_name={fading_dusk=true}}] run advancement grant @s only gen:passive nightfall

## Armorsets
execute if entity @s[advancements={gen:item_name={steel_andure_helmet=true}}] run function gen:gear/internal/set_bonus/steelandure
execute if entity @s[advancements={gen:item_name={steel_andure_chestplate=true}}] run function gen:gear/internal/set_bonus/steelandure
execute if entity @s[advancements={gen:item_name={steel_andure_leggings=true}}] run function gen:gear/internal/set_bonus/steelandure
execute if entity @s[advancements={gen:item_name={steel_andure_boots=true}}] run function gen:gear/internal/set_bonus/steelandure
execute if entity @s[advancements={gen:item_name={reinforced_steel_andure_helmet=true}}] run function gen:gear/internal/set_bonus/steelandure
execute if entity @s[advancements={gen:item_name={reinforced_steel_andure_chestplate=true}}] run function gen:gear/internal/set_bonus/steelandure
execute if entity @s[advancements={gen:item_name={reinforced_steel_andure_leggings=true}}] run function gen:gear/internal/set_bonus/steelandure
execute if entity @s[advancements={gen:item_name={reinforced_steel_andure_boots=true}}] run function gen:gear/internal/set_bonus/steelandure
execute if entity @s[advancements={gen:item_name={shaded_helmet=true}}] run function gen:gear/internal/set_bonus/shaded
execute if entity @s[advancements={gen:item_name={shaded_chestplate=true}}] run function gen:gear/internal/set_bonus/shaded
execute if entity @s[advancements={gen:item_name={shaded_leggings=true}}] run function gen:gear/internal/set_bonus/shaded
execute if entity @s[advancements={gen:item_name={shaded_boots=true}}] run function gen:gear/internal/set_bonus/shaded
execute if entity @s[advancements={gen:item_name={voidbreach_helmet=true}}] run function gen:gear/internal/set_bonus/voidbreach
execute if entity @s[advancements={gen:item_name={voidbreach_chestplate=true}}] run function gen:gear/internal/set_bonus/voidbreach
execute if entity @s[advancements={gen:item_name={voidbreach_leggings=true}}] run function gen:gear/internal/set_bonus/voidbreach
execute if entity @s[advancements={gen:item_name={voidbreach_boots=true}}] run function gen:gear/internal/set_bonus/voidbreach
execute if entity @s[advancements={gen:item_name={frostveil_helmet=true}}] run function gen:gear/internal/set_bonus/frostveil
execute if entity @s[advancements={gen:item_name={frostveil_chestplate=true}}] run function gen:gear/internal/set_bonus/frostveil
execute if entity @s[advancements={gen:item_name={frostveil_leggings=true}}] run function gen:gear/internal/set_bonus/frostveil
execute if entity @s[advancements={gen:item_name={frostveil_boots=true}}] run function gen:gear/internal/set_bonus/frostveil
execute if entity @s[advancements={gen:item_name={apprentice_hat=true}}] run function gen:gear/internal/set_bonus/apprentice
execute if entity @s[advancements={gen:item_name={apprentice_robe=true}}] run function gen:gear/internal/set_bonus/apprentice
execute if entity @s[advancements={gen:item_name={apprentice_trousers=true}}] run function gen:gear/internal/set_bonus/apprentice
execute if entity @s[advancements={gen:item_name={apprentice_boots=true}}] run function gen:gear/internal/set_bonus/apprentice
execute if entity @s[advancements={gen:item_name={mage_hat=true}}] run function gen:gear/internal/set_bonus/mage
execute if entity @s[advancements={gen:item_name={mage_robe=true}}] run function gen:gear/internal/set_bonus/mage
execute if entity @s[advancements={gen:item_name={mage_trousers=true}}] run function gen:gear/internal/set_bonus/mage
execute if entity @s[advancements={gen:item_name={mage_boots=true}}] run function gen:gear/internal/set_bonus/mage
execute if entity @s[advancements={gen:item_name={archmage_hat=true}}] run function gen:gear/internal/set_bonus/archmage
execute if entity @s[advancements={gen:item_name={archmage_robe=true}}] run function gen:gear/internal/set_bonus/archmage
execute if entity @s[advancements={gen:item_name={archmage_trousers=true}}] run function gen:gear/internal/set_bonus/archmage
execute if entity @s[advancements={gen:item_name={archmage_boots=true}}] run function gen:gear/internal/set_bonus/archmage
execute if entity @s[advancements={gen:item_name={dreadnaught_helmet=true}}] run function gen:gear/internal/set_bonus/dreadnaught
execute if entity @s[advancements={gen:item_name={dreadnaught_chestplate=true}}] run function gen:gear/internal/set_bonus/dreadnaught
execute if entity @s[advancements={gen:item_name={dreadnaught_leggings=true}}] run function gen:gear/internal/set_bonus/dreadnaught
execute if entity @s[advancements={gen:item_name={dreadnaught_boots=true}}] run function gen:gear/internal/set_bonus/dreadnaught


##Stance Swap
execute if entity @s[tag=gen.active.stance_swap_onslaught] run function gen:gear/internal/passives/decrease/stance_swap_onslaught

#Heavy Metal
execute if entity @s[tag=gen.passive.heavy_metal,advancements={gen:passive={dreadnaught2=false}}] run function gen:gear/internal/passives/decrease/heavy_metal

#Time Dilation
execute if entity @s[tag=!gen.passive.time_dilation,advancements={gen:passive={time_dilation=true}}] run function gen:gear/internal/passives/increase/time_dilation 
execute if entity @s[tag=gen.passive.time_dilation,advancements={gen:passive={time_dilation=false}}] run function gen:gear/internal/passives/decrease/time_dilation

#Arcanist
execute as @a[advancements={gen:passive={apprentice4=true}},tag=!gen.passive.arcanist_apprentice] run function gen:gear/internal/passives/increase/arcanist_apprentice
execute as @a[tag=gen.passive.arcanist_apprentice,advancements={gen:passive={apprentice4=false}}] run function gen:gear/internal/passives/decrease/arcanist_apprentice
execute as @a[advancements={gen:passive={mage3=true}},tag=!gen.passive.arcanist_mage] run function gen:gear/internal/passives/increase/arcanist_mage
execute as @a[tag=gen.passive.arcanist_mage,advancements={gen:passive={mage3=false}}] run function gen:gear/internal/passives/decrease/arcanist_mage
execute as @a[advancements={gen:passive={archmage2=true}},tag=!gen.passive.arcanist_archmage] run function gen:gear/internal/passives/increase/arcanist_archmage
execute as @a[tag=gen.passive.arcanist_archmage,advancements={gen:passive={archmage2=false}}] run function gen:gear/internal/passives/decrease/arcanist_archmage

## Gear Classes
execute if entity @s[advancements={gen:item_name={riptide=true}}] run scoreboard players add @s gen.class.elemental 1