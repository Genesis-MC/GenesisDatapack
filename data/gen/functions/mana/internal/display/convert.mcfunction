
scoreboard players operation .length gen.math = @s gen.mana.current
scoreboard players operation .amount gen.math *= #72 gen.const
scoreboard players operation .amount gen.math /= @s gen.stat.mana_pool

scoreboard players set @s gen.mana.display 1000000000
scoreboard players set #multiplyer gen.math 100000000

execute if score .amount gen.math matches ..8 run return run function gen:internal/display/get_last
scoreboard players remove .amount gen.math 8
scoreboard players add @s gen.mana.display 900000000
scoreboard players set #multiplyer gen.math 10000000

execute if score .amount gen.math matches ..8 run return run function gen:internal/display/get_last
scoreboard players remove .amount gen.math 8
scoreboard players add @s gen.mana.display 90000000
scoreboard players set #multiplyer gen.math 1000000

execute if score .amount gen.math matches ..8 run return run function gen:internal/display/get_last
scoreboard players remove .amount gen.math 8
scoreboard players add @s gen.mana.display 9000000
scoreboard players set #multiplyer gen.math 100000

execute if score .amount gen.math matches ..8 run return run function gen:internal/display/get_last
scoreboard players remove .amount gen.math 8
scoreboard players add @s gen.mana.display 900000
scoreboard players set #multiplyer gen.math 10000

execute if score .amount gen.math matches ..8 run return run function gen:internal/display/get_last
scoreboard players remove .amount gen.math 8
scoreboard players add @s gen.mana.display 90000
scoreboard players set #multiplyer gen.math 1000

execute if score .amount gen.math matches ..8 run return run function gen:internal/display/get_last
scoreboard players remove .amount gen.math 8
scoreboard players add @s gen.mana.display 9000
scoreboard players set #multiplyer gen.math 100

execute if score .amount gen.math matches ..8 run return run function gen:internal/display/get_last
scoreboard players remove .amount gen.math 8
scoreboard players add @s gen.mana.display 900
scoreboard players set #multiplyer gen.math 10

execute if score .amount gen.math matches ..8 run return run function gen:internal/display/get_last
scoreboard players remove .amount gen.math 8
scoreboard players add @s gen.mana.display 90
scoreboard players set #multiplyer gen.math 1

execute if score .amount gen.math matches ..8 run return run function gen:internal/display/get_last
scoreboard players add @s gen.mana.display 9
