# physical_power
scoreboard players operation @s gen.stat.physical_power -= @s gen.stat.physical_power.mainhand
execute store result score @s gen.stat.physical_power.mainhand run data get storage tungsten:player Item.tag.gen.stat.physical_power
scoreboard players operation @s gen.stat.physical_power += @s gen.stat.physical_power.mainhand
function gen:gear/data/stat/update/physical_power
# magic_power
scoreboard players operation @s gen.stat.magic_power -= @s gen.stat.magic_power.mainhand
execute store result score @s gen.stat.magic_power.mainhand run data get storage tungsten:player Item.tag.gen.stat.magic_power
scoreboard players operation @s gen.stat.magic_power += @s gen.stat.magic_power.mainhand
# attack_speed
scoreboard players operation @s gen.stat.attack_speed -= @s gen.stat.attack_speed.mainhand
execute store result score @s gen.stat.attack_speed.mainhand run data get storage tungsten:player Item.tag.gen.stat.attack_speed
scoreboard players operation @s gen.stat.attack_speed += @s gen.stat.attack_speed.mainhand
function gen:gear/data/stat/update/attack_speed
# health
scoreboard players operation #last_health gen.math = @s gen.stat.health
scoreboard players operation @s gen.stat.health -= @s gen.stat.health.mainhand
execute store result score @s gen.stat.health.mainhand run data get storage tungsten:player Item.tag.gen.stat.health
scoreboard players operation @s gen.stat.health += @s gen.stat.health.mainhand
function gen:gear/data/stat/update/health
# armor
scoreboard players operation @s gen.stat.armor -= @s gen.stat.armor.mainhand
execute store result score @s gen.stat.armor.mainhand run data get storage tungsten:player Item.tag.gen.stat.armor
scoreboard players operation @s gen.stat.armor += @s gen.stat.armor.mainhand
function gen:gear/data/stat/update/armor
# speed
scoreboard players operation @s gen.stat.speed -= @s gen.stat.speed.mainhand
execute store result score @s gen.stat.speed.mainhand run data get storage tungsten:player Item.tag.gen.stat.speed
scoreboard players operation @s gen.stat.speed += @s gen.stat.speed.mainhand
function gen:gear/data/stat/update/speed
# luck
scoreboard players operation @s gen.stat.luck -= @s gen.stat.luck.mainhand
execute store result score @s gen.stat.luck.mainhand run data get storage tungsten:player Item.tag.gen.stat.luck
scoreboard players operation @s gen.stat.luck += @s gen.stat.luck.mainhand
function gen:gear/data/stat/update/luck
# armor_toughness
scoreboard players operation @s gen.stat.armor_toughness -= @s gen.stat.armor_toughness.mainhand
execute store result score @s gen.stat.armor_toughness.mainhand run data get storage tungsten:player Item.tag.gen.stat.armor_toughness
scoreboard players operation @s gen.stat.armor_toughness += @s gen.stat.armor_toughness.mainhand
function gen:gear/data/stat/update/armor_toughness
# knockback_resistance
scoreboard players operation @s gen.stat.knockback_resistance -= @s gen.stat.knockback_resistance.mainhand
execute store result score @s gen.stat.knockback_resistance.mainhand run data get storage tungsten:player Item.tag.gen.stat.knockback_resistance
scoreboard players operation @s gen.stat.knockback_resistance += @s gen.stat.knockback_resistance.mainhand
function gen:gear/data/stat/update/knockback_resistance
# relic_power
scoreboard players operation @s gen.stat.relic_power -= @s gen.stat.relic_power.mainhand
execute store result score @s gen.stat.relic_power.mainhand run data get storage tungsten:player Item.tag.gen.stat.relic_power
scoreboard players operation @s gen.stat.relic_power += @s gen.stat.relic_power.mainhand
# mana_pool
scoreboard players operation @s gen.stat.mana_pool -= @s gen.stat.mana_pool.mainhand
execute store result score @s gen.stat.mana_pool.mainhand run data get storage tungsten:player Item.tag.gen.stat.mana_pool
scoreboard players operation @s gen.stat.mana_pool += @s gen.stat.mana_pool.mainhand
scoreboard players operation @s gen.mana.max = @s gen.stat.mana_pool
scoreboard players operation @s gen.mana.max *= #100 gen.const
# mana_regen
scoreboard players operation @s gen.stat.mana_regen -= @s gen.stat.mana_regen.mainhand
execute store result score @s gen.stat.mana_regen.mainhand run data get storage tungsten:player Item.tag.gen.stat.mana_regen
scoreboard players operation @s gen.stat.mana_regen += @s gen.stat.mana_regen.mainhand
# ability_haste
scoreboard players operation @s gen.stat.ability_haste -= @s gen.stat.ability_haste.mainhand
execute store result score @s gen.stat.ability_haste.mainhand run data get storage tungsten:player Item.tag.gen.stat.ability_haste
scoreboard players operation @s gen.stat.ability_haste += @s gen.stat.ability_haste.mainhand
