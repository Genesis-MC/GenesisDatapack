
execute as @a store result score @s gen.passive.ylvl run data get entity @s Pos[1]
execute as @a store result score @s gen.passive.health run data get entity @s Health

#UnfetteredI
execute as @a[advancements={gen:passive={unfetteredI=true}}] run function gen:gear/internal/passives/unfettered1
#UnfetteredII
execute as @a[advancements={gen:passive={unfetteredII=true}}] run function gen:gear/internal/passives/unfettered2
#Featherweight
execute as @a[advancements={gen:passive={featherweight=true}}] if predicate gen:utils/is_sneaking at @s if block ~ ~-1 ~ air run effect give @s slow_falling 1 0 true
#Supreme Speed
execute as @a[advancements={gen:passive={supreme_speed=true}}] if predicate gen:utils/is_sprinting run effect give @s speed 1 4 true
#Frenzy
execute as @a[advancements={gen:passive={frenzy=true}},tag=!gen.passive.frenzy] if score .percenthp gen.math matches ..30 run function gen:gear/internal/passives/increase/frenzy
execute as @a[tag=gen.passive.frenzy,advancements={gen:passive={frenzy=true}}] if score .percenthp gen.math matches 31.. run function gen:gear/internal/passives/decrease/frenzy
execute as @a[tag=gen.passive.frenzy,advancements={gen:passive={frenzy=false}}] run function gen:gear/internal/passives/decrease/frenzy
#Swiftblade
execute as @a[advancements={gen:passive={swiftblade=true}},tag=!gen.passive.swiftblade,nbt={SelectedItem:{tag:{gen:{type:["Dagger"]}}}}] run function gen:gear/internal/passives/increase/swiftblade
execute as @a[tag=gen.passive.swiftblade,advancements={gen:passive={swiftblade=true}},nbt=!{SelectedItem:{tag:{gen:{type:["Dagger"]}}}}] run function gen:gear/internal/passives/decrease/swiftblade
execute as @a[tag=gen.passive.swiftblade,advancements={gen:passive={swiftblade=false}}] run function gen:gear/internal/passives/decrease/swiftblade

#Transcendence

#Crimson Pact
execute as @a[advancements={gen:passive={crimson_pact=true}},tag=!gen.passive.crimson_pact] if score .percenthp gen.math matches ..30 run function gen:gear/internal/passives/increase/crimson_pact 
execute as @a[tag=gen.passive.crimson_pact,advancements={gen:passive={crimson_pact=true}}] if score .percenthp gen.math matches 31.. run function gen:gear/internal/passives/decrease/crimson_pact
execute as @a[tag=gen.passive.crimson_pact,advancements={gen:passive={crimson_pact=false}}] run function gen:gear/internal/passives/decrease/crimson_pact

schedule function gen:gear/internal/5tickupdate 5t replace