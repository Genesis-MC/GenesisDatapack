#####################################################################
# math/api/random/uniform_range.mcfunction
# written by Eroxen
#
# Samples a value from a uniform distribution in a specified range
#
# Scoreboard input:
# - gen.math :
#   - #random.min : minimum value
#   - #random.max : maximum value
# Scoreboard output:
# - gen.math :
#   - #random.value : sampled value
#####################################################################

function gen:math/internal/advance_pseudorandom_state
scoreboard players operation #random.value gen.math = .pseudorandom_state gen.math
scoreboard players operation #random.value gen.math += #pseudorandom_const_big gen.math
scoreboard players operation #random.range gen.math = #random.max gen.math
scoreboard players operation #random.range gen.math -= #random.min gen.math
scoreboard players set #random.op gen.math 1
execute if score #random.range gen.math matches ..32768 run scoreboard players set #random.op gen.math 32768
scoreboard players operation #random.value gen.math /= #random.op gen.math

scoreboard players add #random.range gen.math 1
scoreboard players operation #random.value gen.math %= #random.range gen.math
scoreboard players operation #random.value gen.math += #random.min gen.math