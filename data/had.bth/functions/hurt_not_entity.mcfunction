scoreboard players set #dmg had.temp 0

scoreboard players operation #dmg had.temp = @s[advancements={had.bth:hurt={attacker=false}}] had.bth.damage_taken
scoreboard players operation #dmg had.temp += @s[advancements={had.bth:hurt={attacker=false}}] had.bth.damage_absorbed
execute unless score #attacker had.temp matches 1 if entity @s[advancements={had.bth:hurt={attacker=false}}] run function had.bth:calc_durability
advancement revoke @s only had.bth:hurt
