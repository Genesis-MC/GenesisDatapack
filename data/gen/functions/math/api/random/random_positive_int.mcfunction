#####################################################################
# math/api/random/random_positive_int.mcfunction
# written by Eroxen
#
# Puts a random value between 0 and the positive integer limit
# in the score #random.value gen.math
#####################################################################

scoreboard players set #random.value gen.math 0
execute if predicate gen:math/random run scoreboard players add #random.value gen.math 1
execute if predicate gen:math/random run scoreboard players add #random.value gen.math 2
execute if predicate gen:math/random run scoreboard players add #random.value gen.math 4
execute if predicate gen:math/random run scoreboard players add #random.value gen.math 8
execute if predicate gen:math/random run scoreboard players add #random.value gen.math 16
execute if predicate gen:math/random run scoreboard players add #random.value gen.math 32
execute if predicate gen:math/random run scoreboard players add #random.value gen.math 64
execute if predicate gen:math/random run scoreboard players add #random.value gen.math 128
execute if predicate gen:math/random run scoreboard players add #random.value gen.math 256
execute if predicate gen:math/random run scoreboard players add #random.value gen.math 512
execute if predicate gen:math/random run scoreboard players add #random.value gen.math 1024
execute if predicate gen:math/random run scoreboard players add #random.value gen.math 2048
execute if predicate gen:math/random run scoreboard players add #random.value gen.math 4096
execute if predicate gen:math/random run scoreboard players add #random.value gen.math 8192
execute if predicate gen:math/random run scoreboard players add #random.value gen.math 16384
execute if predicate gen:math/random run scoreboard players add #random.value gen.math 32768
execute if predicate gen:math/random run scoreboard players add #random.value gen.math 65536
execute if predicate gen:math/random run scoreboard players add #random.value gen.math 131072
execute if predicate gen:math/random run scoreboard players add #random.value gen.math 262144
execute if predicate gen:math/random run scoreboard players add #random.value gen.math 524288
execute if predicate gen:math/random run scoreboard players add #random.value gen.math 1048576
execute if predicate gen:math/random run scoreboard players add #random.value gen.math 2097152
execute if predicate gen:math/random run scoreboard players add #random.value gen.math 4194304
execute if predicate gen:math/random run scoreboard players add #random.value gen.math 8388608
execute if predicate gen:math/random run scoreboard players add #random.value gen.math 16777216
execute if predicate gen:math/random run scoreboard players add #random.value gen.math 33554432
execute if predicate gen:math/random run scoreboard players add #random.value gen.math 67108864
execute if predicate gen:math/random run scoreboard players add #random.value gen.math 134217728
execute if predicate gen:math/random run scoreboard players add #random.value gen.math 268435456
execute if predicate gen:math/random run scoreboard players add #random.value gen.math 536870912
execute if predicate gen:math/random run scoreboard players add #random.value gen.math 1073741824