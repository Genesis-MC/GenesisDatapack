#Triggers when the executor's gen.passive.damage_dealt scoreboard increases
#Venomous I
execute if entity @s[advancements={gen:passive={venomous1=true}}] at @s as @e[distance=..5,limit=1,nbt={HurtTime:10s}] run effect give @s poison 3 0 true
#Venomous II
execute if entity @s[advancements={gen:passive={venomous2=true}}] at @s as @e[distance=..5,limit=1,nbt={HurtTime:10s}] run effect give @s poison 3 1 true

scoreboard players reset @s gen.passive.damage_dealt