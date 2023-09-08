# physical_power
scoreboard players operation @s gen.stat.physical_power -= @s gen.stat.physical_power.feet
execute store result score @s gen.stat.physical_power.feet run data get storage tungsten:player Item.tag.gen.stat.physical_power
scoreboard players operation @s gen.stat.physical_power += @s gen.stat.physical_power.feet
function gen:gear/data/stat/update/physical_power
# magic_power
scoreboard players operation @s gen.stat.magic_power -= @s gen.stat.magic_power.feet
execute store result score @s gen.stat.magic_power.feet run data get storage tungsten:player Item.tag.gen.stat.magic_power
scoreboard players operation @s gen.stat.magic_power += @s gen.stat.magic_power.feet
# attack_speed
scoreboard players operation @s gen.stat.attack_speed -= @s gen.stat.attack_speed.feet
execute store result score @s gen.stat.attack_speed.feet run data get storage tungsten:player Item.tag.gen.stat.attack_speed
scoreboard players operation @s gen.stat.attack_speed += @s gen.stat.attack_speed.feet
function gen:gear/data/stat/update/attack_speed
# health
scoreboard players operation #last_health gen.math = @s gen.stat.health
scoreboard players operation @s gen.stat.health -= @s gen.stat.health.feet
execute store result score @s gen.stat.health.feet run data get storage tungsten:player Item.tag.gen.stat.health
scoreboard players operation @s gen.stat.health += @s gen.stat.health.feet
function gen:gear/data/stat/update/health
# armor
scoreboard players operation @s gen.stat.armor -= @s gen.stat.armor.feet
execute store result score @s gen.stat.armor.feet run data get storage tungsten:player Item.tag.gen.stat.armor
scoreboard players operation @s gen.stat.armor += @s gen.stat.armor.feet
function gen:gear/data/stat/update/armor
# speed
scoreboard players operation @s gen.stat.speed -= @s gen.stat.speed.feet
execute store result score @s gen.stat.speed.feet run data get storage tungsten:player Item.tag.gen.stat.speed
scoreboard players operation @s gen.stat.speed += @s gen.stat.speed.feet
function gen:gear/data/stat/update/speed
# luck
scoreboard players operation @s gen.stat.luck -= @s gen.stat.luck.feet
execute store result score @s gen.stat.luck.feet run data get storage tungsten:player Item.tag.gen.stat.luck
scoreboard players operation @s gen.stat.luck += @s gen.stat.luck.feet
function gen:gear/data/stat/update/luck
# armor_toughness
scoreboard players operation @s gen.stat.armor_toughness -= @s gen.stat.armor_toughness.feet
execute store result score @s gen.stat.armor_toughness.feet run data get storage tungsten:player Item.tag.gen.stat.armor_toughness
scoreboard players operation @s gen.stat.armor_toughness += @s gen.stat.armor_toughness.feet
function gen:gear/data/stat/update/armor_toughness
# knockback_resistance
scoreboard players operation @s gen.stat.knockback_resistance -= @s gen.stat.knockback_resistance.feet
execute store result score @s gen.stat.knockback_resistance.feet run data get storage tungsten:player Item.tag.gen.stat.knockback_resistance
scoreboard players operation @s gen.stat.knockback_resistance += @s gen.stat.knockback_resistance.feet
function gen:gear/data/stat/update/knockback_resistance
# artifact_power
scoreboard players operation @s gen.stat.artifact_power -= @s gen.stat.artifact_power.feet
execute store result score @s gen.stat.artifact_power.feet run data get storage tungsten:player Item.tag.gen.stat.artifact_power
scoreboard players operation @s gen.stat.artifact_power += @s gen.stat.artifact_power.feet
# mana_pool
scoreboard players operation @s gen.stat.mana_pool -= @s gen.stat.mana_pool.feet
execute store result score @s gen.stat.mana_pool.feet run data get storage tungsten:player Item.tag.gen.stat.mana_pool
scoreboard players operation @s gen.stat.mana_pool += @s gen.stat.mana_pool.feet
scoreboard players operation @s gen.mana.max = @s gen.stat.mana_pool
scoreboard players operation @s gen.mana.max *= #10 gen.const
# mana_regen
scoreboard players operation @s gen.stat.mana_regen -= @s gen.stat.mana_regen.feet
execute store result score @s gen.stat.mana_regen.feet run data get storage tungsten:player Item.tag.gen.stat.mana_regen
scoreboard players operation @s gen.stat.mana_regen += @s gen.stat.mana_regen.feet
# ability_haste
scoreboard players operation @s gen.stat.ability_haste -= @s gen.stat.ability_haste.feet
execute store result score @s gen.stat.ability_haste.feet run data get storage tungsten:player Item.tag.gen.stat.ability_haste
scoreboard players operation @s gen.stat.ability_haste += @s gen.stat.ability_haste.feet
# set
execute store result score @s gen.stat.set.feet run data get storage tungsten:player Item.tag.gen.stat.set
