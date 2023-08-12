#tellraw @s {"nbt":"read[].requirements.moon_phase","storage": "gen:mobs","color":"light_purple"}
execute unless score .blood_moon gen.world matches 1 run data remove storage gen:mobs read[{requirements:{moon_phase:{blood_moon:1b}}}]

execute unless score .moon_phase gen.world matches 1 unless score .moon_phase gen.world matches 2 unless score .moon_phase gen.world matches 3 unless score .moon_phase gen.world matches 5 unless score .moon_phase gen.world matches 7 run data remove storage gen:mobs read[{requirements:{moon_phase:{on_prime_days:1b}}}]


execute unless score .moon_phase gen.world matches 1 unless score .moon_phase gen.world matches 3 unless score .moon_phase gen.world matches 5 unless score .moon_phase gen.world matches 7 run data remove storage gen:mobs read[{requirements:{moon_phase:{on_odd_days:1b}}}]
execute unless score .moon_phase gen.world matches 2 unless score .moon_phase gen.world matches 4 unless score .moon_phase gen.world matches 6 unless score .moon_phase gen.world matches 8 run data remove storage gen:mobs read[{requirements:{moon_phase:{on_even_days:1b}}}]

execute if score .moon_phase gen.world matches 1 run data remove storage gen:mobs read[{requirements:{moon_phase:{except:1b}}}]
execute if score .moon_phase gen.world matches 2 run data remove storage gen:mobs read[{requirements:{moon_phase:{except:2b}}}]
execute if score .moon_phase gen.world matches 3 run data remove storage gen:mobs read[{requirements:{moon_phase:{except:3b}}}]
execute if score .moon_phase gen.world matches 4 run data remove storage gen:mobs read[{requirements:{moon_phase:{except:4b}}}]
execute if score .moon_phase gen.world matches 5 run data remove storage gen:mobs read[{requirements:{moon_phase:{except:5b}}}]
execute if score .moon_phase gen.world matches 6 run data remove storage gen:mobs read[{requirements:{moon_phase:{except:6b}}}]
execute if score .moon_phase gen.world matches 7 run data remove storage gen:mobs read[{requirements:{moon_phase:{except:7b}}}]
execute if score .moon_phase gen.world matches 8 run data remove storage gen:mobs read[{requirements:{moon_phase:{except:8b}}}]
tellraw @a[tag=gen.dev.debug.all] {"nbt":"read[].requirements.moon_phase","storage": "gen:mobs","color":"red"}
execute unless score .moon_phase gen.world matches 1 run data remove storage gen:mobs read[{requirements:{moon_phase:{exact:1b}}}]
execute unless score .moon_phase gen.world matches 2 run data remove storage gen:mobs read[{requirements:{moon_phase:{exact:2b}}}]
execute unless score .moon_phase gen.world matches 3 run data remove storage gen:mobs read[{requirements:{moon_phase:{exact:3b}}}]
execute unless score .moon_phase gen.world matches 4 run data remove storage gen:mobs read[{requirements:{moon_phase:{exact:4b}}}]
execute unless score .moon_phase gen.world matches 5 run data remove storage gen:mobs read[{requirements:{moon_phase:{exact:5b}}}]
execute unless score .moon_phase gen.world matches 6 run data remove storage gen:mobs read[{requirements:{moon_phase:{exact:6b}}}]
execute unless score .moon_phase gen.world matches 7 run data remove storage gen:mobs read[{requirements:{moon_phase:{exact:7b}}}]
execute unless score .moon_phase gen.world matches 8 run data remove storage gen:mobs read[{requirements:{moon_phase:{exact:8b}}}]
tellraw @a[tag=gen.dev.debug.all] {"nbt":"read[].requirements.moon_phase","storage": "gen:mobs","color":"light_purple"}
execute if score .moon_phase gen.world matches ..1 run data remove storage gen:mobs read[{requirements:{moon_phase:{min:2b}}}]
execute if score .moon_phase gen.world matches ..2 run data remove storage gen:mobs read[{requirements:{moon_phase:{min:3b}}}]
execute if score .moon_phase gen.world matches ..3 run data remove storage gen:mobs read[{requirements:{moon_phase:{min:4b}}}]
execute if score .moon_phase gen.world matches ..4 run data remove storage gen:mobs read[{requirements:{moon_phase:{min:5b}}}]
execute if score .moon_phase gen.world matches ..5 run data remove storage gen:mobs read[{requirements:{moon_phase:{min:6b}}}]
execute if score .moon_phase gen.world matches ..6 run data remove storage gen:mobs read[{requirements:{moon_phase:{min:7b}}}]
execute if score .moon_phase gen.world matches ..7 run data remove storage gen:mobs read[{requirements:{moon_phase:{min:8b}}}]
tellraw @a[tag=gen.dev.debug.all] {"nbt":"read[].requirements.moon_phase","storage": "gen:mobs","color":"red"}

execute if score .moon_phase gen.world matches 2.. run data remove storage gen:mobs read[{requirements:{moon_phase:{max:1b}}}]
execute if score .moon_phase gen.world matches 3.. run data remove storage gen:mobs read[{requirements:{moon_phase:{max:2b}}}]
execute if score .moon_phase gen.world matches 4.. run data remove storage gen:mobs read[{requirements:{moon_phase:{max:3b}}}]
execute if score .moon_phase gen.world matches 5.. run data remove storage gen:mobs read[{requirements:{moon_phase:{max:4b}}}]
execute if score .moon_phase gen.world matches 6.. run data remove storage gen:mobs read[{requirements:{moon_phase:{max:5b}}}]
execute if score .moon_phase gen.world matches 7.. run data remove storage gen:mobs read[{requirements:{moon_phase:{max:6b}}}]
execute if score .moon_phase gen.world matches 8.. run data remove storage gen:mobs read[{requirements:{moon_phase:{max:7b}}}]
execute if score .moon_phase gen.world matches 9.. run data remove storage gen:mobs read[{requirements:{moon_phase:{max:8b}}}]
tellraw @a[tag=gen.dev.debug.all] {"nbt":"read[].requirements.moon_phase","storage": "gen:mobs","color":"gray"}
data remove storage gen:mobs read[].requirements.moon_phase