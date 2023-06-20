# called by gen:professions/mycology/internal/crop/setup_crop

scoreboard players set #random.min gen.math 0
scoreboard players operation #random.min gen.math -= @s gen.profession.mycology.trait.mutability
scoreboard players operation #random.max gen.math = @s gen.profession.mycology.trait.mutability
function gen:math/api/random/uniform_range
scoreboard players operation @s gen.profession.mycology.trait.growth_size += #random.value gen.math
execute if score @s gen.profession.mycology.trait.growth_size matches ..-51 run scoreboard players set @s gen.profession.mycology.trait.growth_size -50
execute if score @s gen.profession.mycology.trait.growth_size matches 51.. run scoreboard players set @s gen.profession.mycology.trait.growth_size 50
function gen:math/api/random/uniform_range
scoreboard players operation @s gen.profession.mycology.trait.growth_speed += #random.value gen.math
execute if score @s gen.profession.mycology.trait.growth_speed matches ..-51 run scoreboard players set @s gen.profession.mycology.trait.growth_speed -50
execute if score @s gen.profession.mycology.trait.growth_speed matches 51.. run scoreboard players set @s gen.profession.mycology.trait.growth_speed 50
function gen:math/api/random/uniform_range
scoreboard players operation @s gen.profession.mycology.trait.hazard += #random.value gen.math
execute if score @s gen.profession.mycology.trait.hazard matches ..-51 run scoreboard players set @s gen.profession.mycology.trait.hazard -50
execute if score @s gen.profession.mycology.trait.hazard matches 51.. run scoreboard players set @s gen.profession.mycology.trait.hazard 50
function gen:math/api/random/uniform_range
scoreboard players operation @s gen.profession.mycology.trait.moisture += #random.value gen.math
execute if score @s gen.profession.mycology.trait.moisture matches ..-51 run scoreboard players set @s gen.profession.mycology.trait.moisture -50
execute if score @s gen.profession.mycology.trait.moisture matches 51.. run scoreboard players set @s gen.profession.mycology.trait.moisture 50
function gen:math/api/random/uniform_range
scoreboard players operation @s gen.profession.mycology.trait.mutability += #random.value gen.math
execute if score @s gen.profession.mycology.trait.mutability matches ..-51 run scoreboard players set @s gen.profession.mycology.trait.mutability -50
execute if score @s gen.profession.mycology.trait.mutability matches 51.. run scoreboard players set @s gen.profession.mycology.trait.mutability 50
function gen:math/api/random/uniform_range
scoreboard players operation @s gen.profession.mycology.trait.sunlight += #random.value gen.math
execute if score @s gen.profession.mycology.trait.sunlight matches ..-51 run scoreboard players set @s gen.profession.mycology.trait.sunlight -50
execute if score @s gen.profession.mycology.trait.sunlight matches 51.. run scoreboard players set @s gen.profession.mycology.trait.sunlight 50
function gen:math/api/random/uniform_range
scoreboard players operation @s gen.profession.mycology.trait.temperature += #random.value gen.math
execute if score @s gen.profession.mycology.trait.temperature matches ..-1 run scoreboard players set @s gen.profession.mycology.trait.temperature 0
execute if score @s gen.profession.mycology.trait.temperature matches 101.. run scoreboard players set @s gen.profession.mycology.trait.temperature 100
