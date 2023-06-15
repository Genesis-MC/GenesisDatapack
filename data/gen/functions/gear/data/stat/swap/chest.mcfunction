# physical_power
scoreboard players operation @s gen.stat.physical_power -= @s gen.stat.physical_power.chest
execute store result score @s gen.stat.physical_power.chest run data get storage tungsten:player Item.tag.gen.stat.physical_power
scoreboard players operation @s gen.stat.physical_power += @s gen.stat.physical_power.chest
function gen:gear/data/stat/update/physical_power
# magic_power
scoreboard players operation @s gen.stat.magic_power -= @s gen.stat.magic_power.chest
execute store result score @s gen.stat.magic_power.chest run data get storage tungsten:player Item.tag.gen.stat.magic_power
scoreboard players operation @s gen.stat.magic_power += @s gen.stat.magic_power.chest
# attack_speed
scoreboard players operation @s gen.stat.attack_speed -= @s gen.stat.attack_speed.chest
execute store result score @s gen.stat.attack_speed.chest run data get storage tungsten:player Item.tag.gen.stat.attack_speed
scoreboard players operation @s gen.stat.attack_speed += @s gen.stat.attack_speed.chest
function gen:gear/data/stat/update/attack_speed
# health
scoreboard players operation #last_health gen.math = @s gen.stat.health
scoreboard players operation @s gen.stat.health -= @s gen.stat.health.chest
execute store result score @s gen.stat.health.chest run data get storage tungsten:player Item.tag.gen.stat.health
scoreboard players operation @s gen.stat.health += @s gen.stat.health.chest
function gen:gear/data/stat/update/health
# armor
scoreboard players operation @s gen.stat.armor -= @s gen.stat.armor.chest
execute store result score @s gen.stat.armor.chest run data get storage tungsten:player Item.tag.gen.stat.armor
scoreboard players operation @s gen.stat.armor += @s gen.stat.armor.chest
# speed
scoreboard players operation @s gen.stat.speed -= @s gen.stat.speed.chest
execute store result score @s gen.stat.speed.chest run data get storage tungsten:player Item.tag.gen.stat.speed
scoreboard players operation @s gen.stat.speed += @s gen.stat.speed.chest
# luck
scoreboard players operation @s gen.stat.luck -= @s gen.stat.luck.chest
execute store result score @s gen.stat.luck.chest run data get storage tungsten:player Item.tag.gen.stat.luck
scoreboard players operation @s gen.stat.luck += @s gen.stat.luck.chest
# armor_toughness
scoreboard players operation @s gen.stat.armor_toughness -= @s gen.stat.armor_toughness.chest
execute store result score @s gen.stat.armor_toughness.chest run data get storage tungsten:player Item.tag.gen.stat.armor_toughness
scoreboard players operation @s gen.stat.armor_toughness += @s gen.stat.armor_toughness.chest
# knockback_resistance
scoreboard players operation @s gen.stat.knockback_resistance -= @s gen.stat.knockback_resistance.chest
execute store result score @s gen.stat.knockback_resistance.chest run data get storage tungsten:player Item.tag.gen.stat.knockback_resistance
scoreboard players operation @s gen.stat.knockback_resistance += @s gen.stat.knockback_resistance.chest
# artifact_power
scoreboard players operation @s gen.stat.artifact_power -= @s gen.stat.artifact_power.chest
execute store result score @s gen.stat.artifact_power.chest run data get storage tungsten:player Item.tag.gen.stat.artifact_power
scoreboard players operation @s gen.stat.artifact_power += @s gen.stat.artifact_power.chest
# mana_pool
scoreboard players operation @s gen.stat.mana_pool -= @s gen.stat.mana_pool.chest
execute store result score @s gen.stat.mana_pool.chest run data get storage tungsten:player Item.tag.gen.stat.mana_pool
scoreboard players operation @s gen.stat.mana_pool += @s gen.stat.mana_pool.chest
# mana_regen
scoreboard players operation @s gen.stat.mana_regen -= @s gen.stat.mana_regen.chest
execute store result score @s gen.stat.mana_regen.chest run data get storage tungsten:player Item.tag.gen.stat.mana_regen
scoreboard players operation @s gen.stat.mana_regen += @s gen.stat.mana_regen.chest
# ability_haste
scoreboard players operation @s gen.stat.ability_haste -= @s gen.stat.ability_haste.chest
execute store result score @s gen.stat.ability_haste.chest run data get storage tungsten:player Item.tag.gen.stat.ability_haste
scoreboard players operation @s gen.stat.ability_haste += @s gen.stat.ability_haste.chest
# set
execute store result score @s gen.stat.set.chest run data get storage tungsten:player Item.tag.gen.stat.set
