execute store result score #count gen.temp run data get storage gen:phead context_internal.itemstack_used.Count
scoreboard players remove #count gen.temp 1
execute if score #count gen.temp matches 0 run scoreboard players set #count gen.temp 2

execute unless data storage gen:phead context_internal.itemstack_used{Slot:-106b} run item modify entity @s weapon.mainhand gen:count
execute if data storage gen:phead context_internal.itemstack_used{Slot:-106b} run item modify entity @s weapon.offhand gen:count

execute store result score #count gen.temp run data get storage gen:phead context_internal.itemstack_used.Count

execute unless data storage gen:phead context_internal.itemstack_used{Slot:-106b} run item modify entity @s weapon.mainhand gen:count
execute if data storage gen:phead context_internal.itemstack_used{Slot:-106b} run item modify entity @s weapon.offhand gen:count