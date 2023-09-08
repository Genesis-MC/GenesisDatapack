
scoreboard players operation @s gen.mana.current += @s gen.stat.mana_regen
execute if score @s gen.mana.current > @s gen.mana.max run scoreboard players operation @s gen.mana.current = @s gen.mana.max
