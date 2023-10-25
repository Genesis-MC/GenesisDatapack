#Triggers when the executor's gen.passive.damage_dealt scoreboard increases

#Venomous I
execute if entity @s[advancements={gen:passive={venomous1=true}}] at @s as @e[distance=..5,limit=1,nbt={HurtTime:10s}] run effect give @s poison 3 0 true
#Venomous II
execute if entity @s[advancements={gen:passive={venomous2=true}}] at @s as @e[distance=..5,limit=1,nbt={HurtTime:10s}] run effect give @s poison 3 1 true
#Frostbite
execute if entity @s[advancements={gen:passive={frostbite=true}}] at @s as @e[distance=..5,limit=1,nbt={HurtTime:10s}] run function gen:gear/internal/passives/frostbite
#Awakened Shadows
execute if entity @s[advancements={gen:passive={shaded2=true}},nbt={SelectedItem:{tag:{gen:{type:["Dagger","Void"]}}}}] run function gen:gear/internal/passives/awakened_shadows
execute if entity @s[advancements={gen:passive={voidbreach2=true}},nbt={SelectedItem:{tag:{gen:{type:["Dagger","Void"]}}}}] run function gen:gear/internal/passives/awakened_shadows

scoreboard players reset @s gen.passive.damage_dealt