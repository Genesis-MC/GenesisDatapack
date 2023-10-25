scoreboard players operation #cduntil gen.math = @s gen.cooldown.main
function gen:mana/internal/display/convert_cooldown
execute if score @s gen.cooldown.main matches 0 run scoreboard players operation #cduntil gen.math = @s gen.cooldown.off
execute if score @s gen.cooldown.main matches 0 run function gen:mana/internal/display/convert_cooldown
