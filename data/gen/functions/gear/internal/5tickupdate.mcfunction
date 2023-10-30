
execute as @a store result score @s gen.passive.ylvl run data get entity @s Pos[1]

execute as @a run function gen:gear/internal/percenthp_passives

#UnfetteredI
execute as @a[advancements={gen:passive={unfetteredI=true}}] run function gen:gear/internal/passives/unfettered1
#UnfetteredII
execute as @a[advancements={gen:passive={unfetteredII=true}}] run function gen:gear/internal/passives/unfettered2
#Featherweight
execute as @a[advancements={gen:passive={featherweight=true}}] if predicate gen:utils/is_sneaking at @s if block ~ ~-1 ~ air run effect give @s slow_falling 1 0 true
#Supreme Speed
execute as @a[advancements={gen:passive={supreme_speed=true}}] if predicate gen:utils/is_sprinting run effect give @s speed 1 4 true
#Swiftblade
execute as @a[advancements={gen:passive={swiftblade=true}},tag=!gen.passive.swiftblade,nbt={SelectedItem:{tag:{gen:{type:["Dagger"]}}}}] run function gen:gear/internal/passives/increase/swiftblade
execute as @a[tag=gen.passive.swiftblade,advancements={gen:passive={swiftblade=true}},nbt=!{SelectedItem:{tag:{gen:{type:["Dagger"]}}}}] run function gen:gear/internal/passives/decrease/swiftblade
execute as @a[tag=gen.passive.swiftblade,advancements={gen:passive={swiftblade=false}}] run function gen:gear/internal/passives/decrease/swiftblade
#Warped Pact
execute as @a[advancements={gen:passive={warped_pact=true}},tag=!gen.passive.warped_pact] if score @s gen.mana.current matches ..3999 run function gen:gear/internal/passives/increase/warped_pact 
execute as @a[tag=gen.passive.warped_pact,advancements={gen:passive={warped_pact=true}}] if score @s gen.mana.current matches 4000.. run function gen:gear/internal/passives/decrease/warped_pact
execute as @a[tag=gen.passive.warped_pact,advancements={gen:passive={warped_pact=false}}] run function gen:gear/internal/passives/decrease/warped_pact

schedule function gen:gear/internal/5tickupdate 5t replace