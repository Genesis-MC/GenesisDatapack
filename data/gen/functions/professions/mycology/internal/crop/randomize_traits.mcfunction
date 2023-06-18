# called by gen:professions/mycology/internal/crop/setup_crop

scoreboard players set #random.min gen.math 0
scoreboard players operation #random.min gen.math -= @s gen.profession.mycology.trait.mutability
scoreboard players operation #random.max gen.math = @s gen.profession.mycology.trait.mutability
function gen:math/api/random/uniform_range
scoreboard players operation @s gen.profession.mycology.trait.growth_size += #random.value gen.math
execute if score @s gen.profession.mycology.trait.growth_size matches ..-1 run scoreboard players set @s gen.profession.mycology.trait.growth_size 0
execute if score @s gen.profession.mycology.trait.growth_size matches 101.. run scoreboard players set @s gen.profession.mycology.trait.growth_size 100
function gen:math/api/random/uniform_range
scoreboard players operation @s gen.profession.mycology.trait.growth_speed += #random.value gen.math
execute if score @s gen.profession.mycology.trait.growth_speed matches ..-1 run scoreboard players set @s gen.profession.mycology.trait.growth_speed 0
execute if score @s gen.profession.mycology.trait.growth_speed matches 101.. run scoreboard players set @s gen.profession.mycology.trait.growth_speed 100
function gen:math/api/random/uniform_range
scoreboard players operation @s gen.profession.mycology.trait.hazard += #random.value gen.math
execute if score @s gen.profession.mycology.trait.hazard matches ..-1 run scoreboard players set @s gen.profession.mycology.trait.hazard 0
execute if score @s gen.profession.mycology.trait.hazard matches 101.. run scoreboard players set @s gen.profession.mycology.trait.hazard 100
function gen:math/api/random/uniform_range
scoreboard players operation @s gen.profession.mycology.trait.moisture += #random.value gen.math
execute if score @s gen.profession.mycology.trait.moisture matches ..-1 run scoreboard players set @s gen.profession.mycology.trait.moisture 0
execute if score @s gen.profession.mycology.trait.moisture matches 101.. run scoreboard players set @s gen.profession.mycology.trait.moisture 100
function gen:math/api/random/uniform_range
scoreboard players operation @s gen.profession.mycology.trait.mutability += #random.value gen.math
execute if score @s gen.profession.mycology.trait.mutability matches ..-1 run scoreboard players set @s gen.profession.mycology.trait.mutability 0
execute if score @s gen.profession.mycology.trait.mutability matches 101.. run scoreboard players set @s gen.profession.mycology.trait.mutability 100
function gen:math/api/random/uniform_range
scoreboard players operation @s gen.profession.mycology.trait.sunlight += #random.value gen.math
execute if score @s gen.profession.mycology.trait.sunlight matches ..-1 run scoreboard players set @s gen.profession.mycology.trait.sunlight 0
execute if score @s gen.profession.mycology.trait.sunlight matches 101.. run scoreboard players set @s gen.profession.mycology.trait.sunlight 100
function gen:math/api/random/uniform_range
scoreboard players operation @s gen.profession.mycology.trait.temperature += #random.value gen.math
execute if score @s gen.profession.mycology.trait.temperature matches ..-1 run scoreboard players set @s gen.profession.mycology.trait.temperature 0
execute if score @s gen.profession.mycology.trait.temperature matches 101.. run scoreboard players set @s gen.profession.mycology.trait.temperature 100
