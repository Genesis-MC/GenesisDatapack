scoreboard players set #dmg had.temp 0
execute store result score #difficulty had.temp run difficulty
scoreboard players set #attacker had.temp 1
execute on attacker if score #difficulty had.temp matches 0 store result score #dmg had.temp run attribute @s generic.attack_damage get 0
execute on attacker if score #difficulty had.temp matches 1 store result score #dmg had.temp run attribute @s generic.attack_damage get 5
execute on attacker if score #difficulty had.temp matches 2 store result score #dmg had.temp run attribute @s generic.attack_damage get 10
execute on attacker if score #difficulty had.temp matches 3 store result score #dmg had.temp run attribute @s generic.attack_damage get 15
function had.bth:calc_durability