# physical_power
scoreboard players operation @s gen.stat.physical_power -= @s gen.stat.physical_power.offhand
execute store result score @s gen.stat.physical_power.offhand run data get storage tungsten:player Item.tag.gen.stat.physical_power
scoreboard players operation @s gen.stat.physical_power += @s gen.stat.physical_power.offhand
function gen:gear/data/stat/update/physical_power
# magic_power
scoreboard players operation @s gen.stat.magic_power -= @s gen.stat.magic_power.offhand
execute store result score @s gen.stat.magic_power.offhand run data get storage tungsten:player Item.tag.gen.stat.magic_power
scoreboard players operation @s gen.stat.magic_power += @s gen.stat.magic_power.offhand
# attack_speed
scoreboard players operation @s gen.stat.attack_speed -= @s gen.stat.attack_speed.offhand
execute store result score @s gen.stat.attack_speed.offhand run data get storage tungsten:player Item.tag.gen.stat.attack_speed
scoreboard players operation @s gen.stat.attack_speed += @s gen.stat.attack_speed.offhand
function gen:gear/data/stat/update/attack_speed
# health
scoreboard players operation #last_health gen.math = @s gen.stat.health
scoreboard players operation @s gen.stat.health -= @s gen.stat.health.offhand
execute store result score @s gen.stat.health.offhand run data get storage tungsten:player Item.tag.gen.stat.health
scoreboard players operation @s gen.stat.health += @s gen.stat.health.offhand
function gen:gear/data/stat/update/health
# armor
scoreboard players operation @s gen.stat.armor -= @s gen.stat.armor.offhand
execute store result score @s gen.stat.armor.offhand run data get storage tungsten:player Item.tag.gen.stat.armor
scoreboard players operation @s gen.stat.armor += @s gen.stat.armor.offhand
function gen:gear/data/stat/update/armor
# speed
scoreboard players operation @s gen.stat.speed -= @s gen.stat.speed.offhand
execute store result score @s gen.stat.speed.offhand run data get storage tungsten:player Item.tag.gen.stat.speed
scoreboard players operation @s gen.stat.speed += @s gen.stat.speed.offhand
function gen:gear/data/stat/update/speed
# luck
scoreboard players operation @s gen.stat.luck -= @s gen.stat.luck.offhand
execute store result score @s gen.stat.luck.offhand run data get storage tungsten:player Item.tag.gen.stat.luck
scoreboard players operation @s gen.stat.luck += @s gen.stat.luck.offhand
function gen:gear/data/stat/update/luck
# armor_toughness
scoreboard players operation @s gen.stat.armor_toughness -= @s gen.stat.armor_toughness.offhand
execute store result score @s gen.stat.armor_toughness.offhand run data get storage tungsten:player Item.tag.gen.stat.armor_toughness
scoreboard players operation @s gen.stat.armor_toughness += @s gen.stat.armor_toughness.offhand
function gen:gear/data/stat/update/armor_toughness
# knockback_resistance
scoreboard players operation @s gen.stat.knockback_resistance -= @s gen.stat.knockback_resistance.offhand
execute store result score @s gen.stat.knockback_resistance.offhand run data get storage tungsten:player Item.tag.gen.stat.knockback_resistance
scoreboard players operation @s gen.stat.knockback_resistance += @s gen.stat.knockback_resistance.offhand
function gen:gear/data/stat/update/knockback_resistance
# artifact_power
scoreboard players operation @s gen.stat.artifact_power -= @s gen.stat.artifact_power.offhand
execute store result score @s gen.stat.artifact_power.offhand run data get storage tungsten:player Item.tag.gen.stat.artifact_power
scoreboard players operation @s gen.stat.artifact_power += @s gen.stat.artifact_power.offhand
# mana_pool
scoreboard players operation @s gen.stat.mana_pool -= @s gen.stat.mana_pool.offhand
execute store result score @s gen.stat.mana_pool.offhand run data get storage tungsten:player Item.tag.gen.stat.mana_pool
scoreboard players operation @s gen.stat.mana_pool += @s gen.stat.mana_pool.offhand
# mana_regen
scoreboard players operation @s gen.stat.mana_regen -= @s gen.stat.mana_regen.offhand
execute store result score @s gen.stat.mana_regen.offhand run data get storage tungsten:player Item.tag.gen.stat.mana_regen
scoreboard players operation @s gen.stat.mana_regen += @s gen.stat.mana_regen.offhand
# ability_haste
scoreboard players operation @s gen.stat.ability_haste -= @s gen.stat.ability_haste.offhand
execute store result score @s gen.stat.ability_haste.offhand run data get storage tungsten:player Item.tag.gen.stat.ability_haste
scoreboard players operation @s gen.stat.ability_haste += @s gen.stat.ability_haste.offhand
