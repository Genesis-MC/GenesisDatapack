$data modify storage gen:mobs can_spawn.$(can_spawn) set value []
$data modify storage gen:mobs can_spawn.$(can_spawn) append from storage gen:mobs read[{use_spawning_conditions_of:"$(can_spawn)"}]

$data remove storage gen:mobs can_spawn.$(can_spawn)[].use_spawning_conditions_of
$data remove storage gen:mobs can_spawn.$(can_spawn)[].requirements.moon_phase
$data remove storage gen:mobs can_spawn.$(can_spawn)[].requirements.dimension

# comment this line when debugging
$data remove storage gen:mobs can_spawn.$(can_spawn)[].name
# remove dead weight
$data remove storage gen:mobs can_spawn.$(can_spawn)[{weight:0}]

$data remove storage gen:mobs can_spawn.$(can_spawn)[].requirements.weather

$execute unless data storage gen:mobs can_spawn.$(can_spawn)[0] run data remove storage gen:mobs can_spawn.$(can_spawn)