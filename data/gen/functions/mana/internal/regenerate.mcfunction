
scoreboard players operation @s gen.mana.current += @s gen.stat.mana_regen
execute if score @s gen.mana.current > @s gen.mana.max run scoreboard players operation @s gen.mana.current = @s gen.mana.max
execute if score @s gen.mana.current matches ..0 run scoreboard players set @s gen.mana.current 0
function gen:mana/internal/display/convert
