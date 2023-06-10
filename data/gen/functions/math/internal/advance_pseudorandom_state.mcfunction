#####################################################################
# Thanks rignchen lol
#####################################################################
execute if score .pseudorandom_state gen.math matches 0 run scoreboard players set .pseudorandom_state gen.math 1
scoreboard players operation .pseudorandom_state gen.math *= #pseudorandom_const_a gen.math
scoreboard players operation .pseudorandom_state gen.math += #pseudorandom_const_c gen.math
execute if score .pseudorandom_state gen.math matches ..-1 run function gen:math/internal/mod_pseudorandom_state