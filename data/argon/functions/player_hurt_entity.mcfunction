# mc-argon v1.0.2 by PuckiSilver
scoreboard players set #found argon.id 0
execute if entity @s[advancements={argon:player_hurt_entity={bit0=false, bit1=false, bit2=false, bit3=false, bit4=false, bit5=false, bit6=false, bit7=false, bit8=false, bit9=false, bit10=false, bit11=false, bit12=false, bit13=false, bit14=false, bit15=false}}] run function argon:player_hurt_entity/setup/as_player
execute unless score #found argon.id matches 0 run advancement revoke @s only argon:player_hurt_entity
execute unless score #found argon.id matches 0 run return 0
scoreboard players reset #id argon.id
execute if entity @s[advancements={argon:player_hurt_entity={bit0=true}}] run scoreboard players add #id argon.id 1
execute if entity @s[advancements={argon:player_hurt_entity={bit1=true}}] run scoreboard players add #id argon.id 2
execute if entity @s[advancements={argon:player_hurt_entity={bit2=true}}] run scoreboard players add #id argon.id 4
execute if entity @s[advancements={argon:player_hurt_entity={bit3=true}}] run scoreboard players add #id argon.id 8
execute if entity @s[advancements={argon:player_hurt_entity={bit4=true}}] run scoreboard players add #id argon.id 16
execute if entity @s[advancements={argon:player_hurt_entity={bit5=true}}] run scoreboard players add #id argon.id 32
execute if entity @s[advancements={argon:player_hurt_entity={bit6=true}}] run scoreboard players add #id argon.id 64
execute if entity @s[advancements={argon:player_hurt_entity={bit7=true}}] run scoreboard players add #id argon.id 128
execute if entity @s[advancements={argon:player_hurt_entity={bit8=true}}] run scoreboard players add #id argon.id 256
execute if entity @s[advancements={argon:player_hurt_entity={bit9=true}}] run scoreboard players add #id argon.id 512
execute if entity @s[advancements={argon:player_hurt_entity={bit10=true}}] run scoreboard players add #id argon.id 1024
execute if entity @s[advancements={argon:player_hurt_entity={bit11=true}}] run scoreboard players add #id argon.id 2048
execute if entity @s[advancements={argon:player_hurt_entity={bit12=true}}] run scoreboard players add #id argon.id 4096
execute if entity @s[advancements={argon:player_hurt_entity={bit13=true}}] run scoreboard players add #id argon.id 8192
execute if entity @s[advancements={argon:player_hurt_entity={bit14=true}}] run scoreboard players add #id argon.id 16384
execute if entity @s[advancements={argon:player_hurt_entity={bit15=true}}] run scoreboard players add #id argon.id 32768
execute as @e[type=!#argon:non_living, limit=1, predicate=argon:match_id] run function argon:player_hurt_entity/as_entity
execute if score #found argon.id matches 0 run function #argon:player_killed_entity
advancement revoke @s only argon:player_hurt_entity
# mc-argon v1.0.2 by PuckiSilver
