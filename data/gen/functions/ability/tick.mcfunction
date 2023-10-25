execute as @a[scores={gen.ability.use=1..},predicate=gen:ability/wfoas_mainhand] run function gen:ability/internal/use_mainhand
execute as @a[scores={gen.ability.use=1..},predicate=!gen:ability/wfoas_mainhand] run function gen:ability/internal/use_offhand
scoreboard players reset @a[scores={gen.ability.use=1..}] gen.ability.use
