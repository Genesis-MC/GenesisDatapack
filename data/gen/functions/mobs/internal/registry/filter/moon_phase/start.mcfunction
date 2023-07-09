execute if score .is_night gen.world matches 0 run data remove storage gen:mobs read[{requirements:{moon_phase:{}}}]
execute if score .is_night gen.world matches 1 run function gen:mobs/internal/registry/filter/moon_phase/do
