tag @s add player.hitter
execute as @e[type=!#gen:mobs/cant_be_hurt,nbt={HurtTime:10s}] at @s run function gen:mobs/internal/is_hurt
tag @s remove player.hitter
advancement revoke @s only gen:player_hurt_entity