
execute store result score @s gen.passive.health run data get entity @s Health
scoreboard players set #mult gen.math 1000

scoreboard players set .maxhp gen.math 200
scoreboard players operation .maxhp gen.math += @s gen.stat.health
scoreboard players operation .percenthp gen.math = @s gen.passive.health
scoreboard players operation .percenthp gen.math *= #mult gen.math
scoreboard players operation .percenthp gen.math /= .maxhp gen.math

#tellraw @s {"score":{"name":".percenthp","objective":"gen.math"}}

#Crimson Pact
execute if entity @s[advancements={gen:passive={crimson_pact=true}},tag=!gen.passive.crimson_pact] if score .percenthp gen.math matches ..60 run function gen:gear/internal/passives/increase/crimson_pact 
execute if entity @s[tag=gen.passive.crimson_pact,advancements={gen:passive={crimson_pact=true}}] if score .percenthp gen.math matches 61.. run function gen:gear/internal/passives/decrease/crimson_pact
execute if entity @s[tag=gen.passive.crimson_pact,advancements={gen:passive={crimson_pact=false}}] run function gen:gear/internal/passives/decrease/crimson_pact
#Frenzy
execute if entity @s[advancements={gen:passive={frenzy=true}},tag=!gen.passive.frenzy] if score .percenthp gen.math matches ..30 run function gen:gear/internal/passives/increase/frenzy
execute if entity @s[tag=gen.passive.frenzy,advancements={gen:passive={frenzy=true}}] if score .percenthp gen.math matches 31.. run function gen:gear/internal/passives/decrease/frenzy
execute if entity @s[tag=gen.passive.frenzy,advancements={gen:passive={frenzy=false}}] run function gen:gear/internal/passives/decrease/frenzy
