scoreboard players set #random.min gen.math 0
scoreboard players set #random.max gen.math 5
function gen:math/api/random/uniform_range
tellraw @a {"score":{"name":"#random.value","objective":"gen.math"}}