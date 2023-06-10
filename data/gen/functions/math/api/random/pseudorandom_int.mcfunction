#####################################################################
# math/api/random/pseudorandom_int.mcfunction
# written by Eroxen
#
# Puts a pseudorandom value between the negative and positive integer limit
# in the score #pseudorandom_int gen.math
#####################################################################

function gen:math/internal/advance_pseudorandom_state
scoreboard players operation #pseudorandom_int gen.math = .pseudorandom_state gen.math