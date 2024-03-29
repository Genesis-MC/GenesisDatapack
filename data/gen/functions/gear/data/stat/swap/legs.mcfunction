# physical_power
scoreboard players operation @s gen.stat.physical_power -= @s gen.stat.physical_power.legs
execute store result score @s gen.stat.physical_power.legs run data get storage tungsten:player Item.tag.gen.stat.physical_power
scoreboard players operation @s gen.stat.physical_power += @s gen.stat.physical_power.legs
function gen:gear/data/stat/update/physical_power
# magic_power
scoreboard players operation @s gen.stat.magic_power -= @s gen.stat.magic_power.legs
execute store result score @s gen.stat.magic_power.legs run data get storage tungsten:player Item.tag.gen.stat.magic_power
scoreboard players operation @s gen.stat.magic_power += @s gen.stat.magic_power.legs
# attack_speed
scoreboard players operation @s gen.stat.attack_speed -= @s gen.stat.attack_speed.legs
execute store result score @s gen.stat.attack_speed.legs run data get storage tungsten:player Item.tag.gen.stat.attack_speed
scoreboard players operation @s gen.stat.attack_speed += @s gen.stat.attack_speed.legs
function gen:gear/data/stat/update/attack_speed
# health
scoreboard players operation #last_health gen.math = @s gen.stat.health
scoreboard players operation @s gen.stat.health -= @s gen.stat.health.legs
execute store result score @s gen.stat.health.legs run data get storage tungsten:player Item.tag.gen.stat.health
scoreboard players operation @s gen.stat.health += @s gen.stat.health.legs
function gen:gear/data/stat/update/health
# armor
scoreboard players operation @s gen.stat.armor -= @s gen.stat.armor.legs
execute store result score @s gen.stat.armor.legs run data get storage tungsten:player Item.tag.gen.stat.armor
scoreboard players operation @s gen.stat.armor += @s gen.stat.armor.legs
function gen:gear/data/stat/update/armor
# speed
scoreboard players operation @s gen.stat.speed -= @s gen.stat.speed.legs
execute store result score @s gen.stat.speed.legs run data get storage tungsten:player Item.tag.gen.stat.speed
scoreboard players operation @s gen.stat.speed += @s gen.stat.speed.legs
function gen:gear/data/stat/update/speed
# luck
scoreboard players operation @s gen.stat.luck -= @s gen.stat.luck.legs
execute store result score @s gen.stat.luck.legs run data get storage tungsten:player Item.tag.gen.stat.luck
scoreboard players operation @s gen.stat.luck += @s gen.stat.luck.legs
function gen:gear/data/stat/update/luck
# armor_toughness
scoreboard players operation @s gen.stat.armor_toughness -= @s gen.stat.armor_toughness.legs
execute store result score @s gen.stat.armor_toughness.legs run data get storage tungsten:player Item.tag.gen.stat.armor_toughness
scoreboard players operation @s gen.stat.armor_toughness += @s gen.stat.armor_toughness.legs
function gen:gear/data/stat/update/armor_toughness
# knockback_resistance
scoreboard players operation @s gen.stat.knockback_resistance -= @s gen.stat.knockback_resistance.legs
execute store result score @s gen.stat.knockback_resistance.legs run data get storage tungsten:player Item.tag.gen.stat.knockback_resistance
scoreboard players operation @s gen.stat.knockback_resistance += @s gen.stat.knockback_resistance.legs
function gen:gear/data/stat/update/knockback_resistance
# relic_power
scoreboard players operation @s gen.stat.relic_power -= @s gen.stat.relic_power.legs
execute store result score @s gen.stat.relic_power.legs run data get storage tungsten:player Item.tag.gen.stat.relic_power
scoreboard players operation @s gen.stat.relic_power += @s gen.stat.relic_power.legs
# mana_pool
scoreboard players operation @s gen.stat.mana_pool -= @s gen.stat.mana_pool.legs
execute store result score @s gen.stat.mana_pool.legs run data get storage tungsten:player Item.tag.gen.stat.mana_pool
scoreboard players operation @s gen.stat.mana_pool += @s gen.stat.mana_pool.legs
scoreboard players operation @s gen.mana.max = @s gen.stat.mana_pool
scoreboard players operation @s gen.mana.max *= #100 gen.const
# mana_regen
scoreboard players operation @s gen.stat.mana_regen -= @s gen.stat.mana_regen.legs
execute store result score @s gen.stat.mana_regen.legs run data get storage tungsten:player Item.tag.gen.stat.mana_regen
scoreboard players operation @s gen.stat.mana_regen += @s gen.stat.mana_regen.legs
# ability_haste
scoreboard players operation @s gen.stat.ability_haste -= @s gen.stat.ability_haste.legs
execute store result score @s gen.stat.ability_haste.legs run data get storage tungsten:player Item.tag.gen.stat.ability_haste
scoreboard players operation @s gen.stat.ability_haste += @s gen.stat.ability_haste.legs
# set
execute store result score @s gen.stat.set.legs run data get storage tungsten:player Item.tag.gen.stat.set
