# physical_power
scoreboard players operation @s gen.stat.physical_power -= @s gen.stat.physical_power.head
execute store result score @s gen.stat.physical_power.head run data get storage tungsten:player Item.tag.gen.stat.physical_power
scoreboard players operation @s gen.stat.physical_power += @s gen.stat.physical_power.head
function gen:gear/data/stat/update/physical_power
# magic_power
scoreboard players operation @s gen.stat.magic_power -= @s gen.stat.magic_power.head
execute store result score @s gen.stat.magic_power.head run data get storage tungsten:player Item.tag.gen.stat.magic_power
scoreboard players operation @s gen.stat.magic_power += @s gen.stat.magic_power.head
# attack_speed
scoreboard players operation @s gen.stat.attack_speed -= @s gen.stat.attack_speed.head
execute store result score @s gen.stat.attack_speed.head run data get storage tungsten:player Item.tag.gen.stat.attack_speed
scoreboard players operation @s gen.stat.attack_speed += @s gen.stat.attack_speed.head
function gen:gear/data/stat/update/attack_speed
# health
scoreboard players operation #last_health gen.math = @s gen.stat.health
scoreboard players operation @s gen.stat.health -= @s gen.stat.health.head
execute store result score @s gen.stat.health.head run data get storage tungsten:player Item.tag.gen.stat.health
scoreboard players operation @s gen.stat.health += @s gen.stat.health.head
function gen:gear/data/stat/update/health
# armor
scoreboard players operation @s gen.stat.armor -= @s gen.stat.armor.head
execute store result score @s gen.stat.armor.head run data get storage tungsten:player Item.tag.gen.stat.armor
scoreboard players operation @s gen.stat.armor += @s gen.stat.armor.head
# speed
scoreboard players operation @s gen.stat.speed -= @s gen.stat.speed.head
execute store result score @s gen.stat.speed.head run data get storage tungsten:player Item.tag.gen.stat.speed
scoreboard players operation @s gen.stat.speed += @s gen.stat.speed.head
function gen:gear/data/stat/update/speed
# luck
scoreboard players operation @s gen.stat.luck -= @s gen.stat.luck.head
execute store result score @s gen.stat.luck.head run data get storage tungsten:player Item.tag.gen.stat.luck
scoreboard players operation @s gen.stat.luck += @s gen.stat.luck.head
# armor_toughness
scoreboard players operation @s gen.stat.armor_toughness -= @s gen.stat.armor_toughness.head
execute store result score @s gen.stat.armor_toughness.head run data get storage tungsten:player Item.tag.gen.stat.armor_toughness
scoreboard players operation @s gen.stat.armor_toughness += @s gen.stat.armor_toughness.head
# knockback_resistance
scoreboard players operation @s gen.stat.knockback_resistance -= @s gen.stat.knockback_resistance.head
execute store result score @s gen.stat.knockback_resistance.head run data get storage tungsten:player Item.tag.gen.stat.knockback_resistance
scoreboard players operation @s gen.stat.knockback_resistance += @s gen.stat.knockback_resistance.head
# artifact_power
scoreboard players operation @s gen.stat.artifact_power -= @s gen.stat.artifact_power.head
execute store result score @s gen.stat.artifact_power.head run data get storage tungsten:player Item.tag.gen.stat.artifact_power
scoreboard players operation @s gen.stat.artifact_power += @s gen.stat.artifact_power.head
# mana_pool
scoreboard players operation @s gen.stat.mana_pool -= @s gen.stat.mana_pool.head
execute store result score @s gen.stat.mana_pool.head run data get storage tungsten:player Item.tag.gen.stat.mana_pool
scoreboard players operation @s gen.stat.mana_pool += @s gen.stat.mana_pool.head
# mana_regen
scoreboard players operation @s gen.stat.mana_regen -= @s gen.stat.mana_regen.head
execute store result score @s gen.stat.mana_regen.head run data get storage tungsten:player Item.tag.gen.stat.mana_regen
scoreboard players operation @s gen.stat.mana_regen += @s gen.stat.mana_regen.head
# ability_haste
scoreboard players operation @s gen.stat.ability_haste -= @s gen.stat.ability_haste.head
execute store result score @s gen.stat.ability_haste.head run data get storage tungsten:player Item.tag.gen.stat.ability_haste
scoreboard players operation @s gen.stat.ability_haste += @s gen.stat.ability_haste.head
# set
execute store result score @s gen.stat.set.head run data get storage tungsten:player Item.tag.gen.stat.set
