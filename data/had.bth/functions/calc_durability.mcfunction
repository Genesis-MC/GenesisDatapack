scoreboard players operation #dmg had.temp /= #4 had.const
scoreboard players operation #dmg had.temp /= #10 had.const
execute if score #dmg had.temp matches ..0 run scoreboard players set #dmg had.temp 1
scoreboard players reset @s had.bth.damage_taken
scoreboard players reset @s had.bth.damage_absorbed
scoreboard players set #attacker had.temp 0

#tellraw @p {"score:{"name": "#dmg","objective": "had.temp"},"color":"red"}

data modify storage had.bth:main read set value {}


data modify storage had.bth:main read set from entity @s Inventory[{Slot:103b}].tag.HelmetData.Original.tag.HelmetData

execute store result score #Damage had.temp run data get storage had.bth:main read.Damage

execute store result score #maxDamage had.temp run data get storage had.bth:main read.MaxDamage
execute if score #maxDamage had.temp matches 0 run scoreboard players set #maxDamage had.temp 363

#tellraw @p {"score":{"name": "#Damage","objective": "had.temp"},"color":"gold"}

execute store result storage had.bth:main Damage int 1 run scoreboard players operation #Damage had.temp += #dmg had.temp
#tellraw @p {"score":{"name": "#Damage","objective": "had.temp"},"color":"yellow"}
execute if score #Damage had.temp >= #maxDamage had.temp run item replace entity @s armor.head with air
execute if score #Damage had.temp >= #maxDamage had.temp run playsound block.anvil.destroy player @s ~ ~ ~ 1 2 1
item modify entity @s armor.head had.bth:merge_damage