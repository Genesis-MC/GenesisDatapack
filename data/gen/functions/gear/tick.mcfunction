
#execute as @a[advancements={gen:gear/bth/unworn=true}] run function gen:gear/internal/bth/unworn
execute as @a[advancements={gen:gear/bth/wore=true}] in minecraft:overworld run function gen:gear/internal/bth/wore

execute as @a[tag=gen.passive.time_dilation,advancements={gen:passive={time_dilation=false}}] run function gen:gear/internal/passives/decrease/time_dilation

execute as @a if score @s gen.passive.damage_dealt matches 1.. run function gen:gear/internal/passives/detect_hit
execute as @a if score @s gen.ability.trigger_wfoas matches 1.. if entity @s[nbt={Inventory:[{Slot:-106b,tag:{gen:{name:"Lapis Prism"}}}]}] run function gen:ability/data/illumination
execute as @a[scores={gen.bth.damage_taken=1..}] run function gen:gear/internal/bth/calc_durability