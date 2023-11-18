## heals 8-(val) amount of health to @s
#check if player is already at max hp
execute store result score #diff gen.math run attribute @s generic.max_health get
execute store result score #player_hp gen.math run data get entity @s Health
execute if score #player_hp gen.math >= #diff gen.math run return 0

scoreboard players operation #diff gen.math -= #player_hp gen.math
scoreboard players set #amount_tbhealed gen.math 8
$scoreboard players remove #amount_tbhealed gen.math $(val)
#diff is the difference between max and current health or the # of empty hearts
#amount_tbhealed is the amount of hp to be healed

#Heals 8 hearts
effect give @s instant_health 1 1 false


execute if score #diff gen.math matches ..7 run scoreboard players operation @s gen.ability.healing_delay_dmg += #diff gen.math
execute if score #diff gen.math matches ..7 run scoreboard players operation @s gen.ability.healing_delay_dmg -= #amount_tbhealed gen.math

#Only apply damage if the number of empty hearts is greater than the amount to be healed
$execute if score #diff gen.math > #amount_tbhealed gen.math if score #diff gen.math matches 8.. run scoreboard players add @s gen.ability.healing_delay_dmg $(val)

schedule function gen:ability/data/macros/heal/delay 2t replace
