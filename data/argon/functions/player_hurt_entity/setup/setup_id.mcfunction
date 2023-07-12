# Argon v1.0.0 by PuckiSilver
scoreboard players add .global argon.id 1
execute if score .global argon.id matches 65537.. run scoreboard players set .global argon.id 1
scoreboard players operation @s argon.id = .global argon.id
scoreboard players operation #id argon.id = .global argon.id
execute if score #id argon.id matches 32768.. run scoreboard players set @s argon.bit15 1
execute if score #id argon.id matches 32768.. run scoreboard players remove #id argon.id 32768
execute if score #id argon.id matches 16384.. run scoreboard players set @s argon.bit14 1
execute if score #id argon.id matches 16384.. run scoreboard players remove #id argon.id 16384
execute if score #id argon.id matches 8192.. run scoreboard players set @s argon.bit13 1
execute if score #id argon.id matches 8192.. run scoreboard players remove #id argon.id 8192
execute if score #id argon.id matches 4096.. run scoreboard players set @s argon.bit12 1
execute if score #id argon.id matches 4096.. run scoreboard players remove #id argon.id 4096
execute if score #id argon.id matches 2048.. run scoreboard players set @s argon.bit11 1
execute if score #id argon.id matches 2048.. run scoreboard players remove #id argon.id 2048
execute if score #id argon.id matches 1024.. run scoreboard players set @s argon.bit10 1
execute if score #id argon.id matches 1024.. run scoreboard players remove #id argon.id 1024
execute if score #id argon.id matches 512.. run scoreboard players set @s argon.bit9 1
execute if score #id argon.id matches 512.. run scoreboard players remove #id argon.id 512
execute if score #id argon.id matches 256.. run scoreboard players set @s argon.bit8 1
execute if score #id argon.id matches 256.. run scoreboard players remove #id argon.id 256
execute if score #id argon.id matches 128.. run scoreboard players set @s argon.bit7 1
execute if score #id argon.id matches 128.. run scoreboard players remove #id argon.id 128
execute if score #id argon.id matches 64.. run scoreboard players set @s argon.bit6 1
execute if score #id argon.id matches 64.. run scoreboard players remove #id argon.id 64
execute if score #id argon.id matches 32.. run scoreboard players set @s argon.bit5 1
execute if score #id argon.id matches 32.. run scoreboard players remove #id argon.id 32
execute if score #id argon.id matches 16.. run scoreboard players set @s argon.bit4 1
execute if score #id argon.id matches 16.. run scoreboard players remove #id argon.id 16
execute if score #id argon.id matches 8.. run scoreboard players set @s argon.bit3 1
execute if score #id argon.id matches 8.. run scoreboard players remove #id argon.id 8
execute if score #id argon.id matches 4.. run scoreboard players set @s argon.bit2 1
execute if score #id argon.id matches 4.. run scoreboard players remove #id argon.id 4
execute if score #id argon.id matches 2.. run scoreboard players set @s argon.bit1 1
execute if score #id argon.id matches 2.. run scoreboard players remove #id argon.id 2
execute if score #id argon.id matches 1.. run scoreboard players set @s argon.bit0 1
# Argon v1.0.0 by PuckiSilver
