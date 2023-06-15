tellraw @a[tag=gen.dev.debug] ["",{"text":"Genesis","color":"#DF9DE3"},{"text":" ->","color":"yellow"},{"text":" Reloading ","color":"green"},{"text":"math ","color":"yellow"},{"text":"module","color":"green"}]

scoreboard objectives add gen.math dummy

scoreboard objectives add gen.const dummy
function gen:math/data/set_consts

function gen:math/api/random/random_positive_int
scoreboard players operation .pseudorandom_state gen.math = #random.value gen.math
scoreboard players set #pseudorandom_const_a gen.math 1664525
scoreboard players set #pseudorandom_const_c gen.math 1013904223