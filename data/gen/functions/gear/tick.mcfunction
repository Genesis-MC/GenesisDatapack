execute as @a[scores={gen.ability.use=1..}] run function gen:gear/internal/ability/tick_as_player

#execute as @a[advancements={gen:gear/bth/unworn=true}] run function gen:gear/internal/bth/unworn
execute as @a[advancements={gen:gear/bth/wore=true}] in minecraft:overworld run function gen:gear/internal/bth/wore

execute as @a[scores={gen.bth.damage_taken=1..}] run function gen:gear/internal/bth/calc_durability