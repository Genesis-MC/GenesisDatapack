# called by gen:crops/internal/place/summon_crop_entity
# seed nbt is at storage gen:profession/mycology Seed
tag @s add gen.profession.mycology.crop_entity
execute store result score @s gen.profession.mycology.trait.growth_size run data get storage gen:profession/mycology Seed.growth_size
execute store result score @s gen.profession.mycology.trait.growth_speed run data get storage gen:profession/mycology Seed.growth_speed
execute store result score @s gen.profession.mycology.trait.hazard run data get storage gen:profession/mycology Seed.hazard
execute store result score @s gen.profession.mycology.trait.moisture run data get storage gen:profession/mycology Seed.moisture
execute store result score @s gen.profession.mycology.trait.mutability run data get storage gen:profession/mycology Seed.mutability
execute store result score @s gen.profession.mycology.trait.sunlight run data get storage gen:profession/mycology Seed.sunlight
execute store result score @s gen.profession.mycology.trait.temperature run data get storage gen:profession/mycology Seed.temperature
