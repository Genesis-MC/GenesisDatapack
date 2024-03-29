scoreboard players remove #dist gen.raycast 1

$execute unless block ~ ~ ~ $(pass_through) \
        run function gen:raycast/internal/hit/block

execute if score #hit gen.raycast matches 0 \
        positioned ~-0.05 ~-0.05 ~-0.05 as @e[tag=!gen.raycaster,dx=0] \
        positioned ~-0.85 ~-0.85 ~-0.85 if entity @s[dx=0] \
        positioned ~0.9 ~0.9 ~0.9 \
        run function gen:raycast/internal/hit/entity

execute if score #hit gen.raycast matches 0 \
        if score #dist gen.raycast matches ..0 \
        run function gen:raycast/internal/hit/nothing

execute if score #hit gen.raycast matches 0 \
        positioned ^ ^ ^0.1 \
        run function gen:raycast/internal/recursive_kwargs with storage gen:raycast kwargs
