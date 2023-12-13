
scoreboard players operation @s gen.mana.current.real = @s gen.mana.current
scoreboard players operation @s gen.mana.current.real /= #100 gen.const

scoreboard players operation .amount gen.math = @s gen.mana.current
scoreboard players operation .amount gen.math *= #20 gen.const
scoreboard players operation .amount gen.math /= @s gen.mana.max

scoreboard players set @s gen.mana.display 1060606060

scoreboard players set #multiplyer gen.math 1
execute if score .amount gen.math matches ..4 run function gen:mana/internal/display/get_last
execute if score .amount gen.math matches ..4 run return 1
scoreboard players remove .amount gen.math 4
scoreboard players add @s gen.mana.display 5

scoreboard players set #multiplyer gen.math 100
execute if score .amount gen.math matches ..4 run function gen:mana/internal/display/get_last
execute if score .amount gen.math matches ..4 run return 1
scoreboard players remove .amount gen.math 4
scoreboard players add @s gen.mana.display 500

scoreboard players set #multiplyer gen.math 10000
execute if score .amount gen.math matches ..4 run function gen:mana/internal/display/get_last
execute if score .amount gen.math matches ..4 run return 1
scoreboard players remove .amount gen.math 4
scoreboard players add @s gen.mana.display 50000

scoreboard players set #multiplyer gen.math 1000000
execute if score .amount gen.math matches ..4 run function gen:mana/internal/display/get_last
execute if score .amount gen.math matches ..4 run return 1
scoreboard players remove .amount gen.math 4
scoreboard players add @s gen.mana.display 5000000

scoreboard players set #multiplyer gen.math 100000000
execute if score .amount gen.math matches ..4 run function gen:mana/internal/display/get_last
execute if score .amount gen.math matches ..4 run return 1
scoreboard players add @s gen.mana.display 500000000
