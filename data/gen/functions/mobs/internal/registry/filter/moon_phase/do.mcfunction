#tellraw @s {"nbt":"read[].requirements.moon_phase","storage": "gen:mobs","color":"light_purple"}

execute if score .moon_phase gen.world matches 1 run data remove storage gen:mobs read[{requirements:{moon_phase:{except:1}}}]
execute if score .moon_phase gen.world matches 2 run data remove storage gen:mobs read[{requirements:{moon_phase:{except:2}}}]
execute if score .moon_phase gen.world matches 3 run data remove storage gen:mobs read[{requirements:{moon_phase:{except:3}}}]
execute if score .moon_phase gen.world matches 4 run data remove storage gen:mobs read[{requirements:{moon_phase:{except:4}}}]
execute if score .moon_phase gen.world matches 5 run data remove storage gen:mobs read[{requirements:{moon_phase:{except:5}}}]
execute if score .moon_phase gen.world matches 6 run data remove storage gen:mobs read[{requirements:{moon_phase:{except:6}}}]
execute if score .moon_phase gen.world matches 7 run data remove storage gen:mobs read[{requirements:{moon_phase:{except:7}}}]
execute if score .moon_phase gen.world matches 8 run data remove storage gen:mobs read[{requirements:{moon_phase:{except:8}}}]
tellraw @a[tag=gen.dev.debug.all] {"nbt":"read[].requirements.moon_phase","storage": "gen:mobs","color":"red"}
execute unless score .moon_phase gen.world matches 1 run data remove storage gen:mobs read[{requirements:{moon_phase:{exact:1}}}]
execute unless score .moon_phase gen.world matches 2 run data remove storage gen:mobs read[{requirements:{moon_phase:{exact:2}}}]
execute unless score .moon_phase gen.world matches 3 run data remove storage gen:mobs read[{requirements:{moon_phase:{exact:3}}}]
execute unless score .moon_phase gen.world matches 4 run data remove storage gen:mobs read[{requirements:{moon_phase:{exact:4}}}]
execute unless score .moon_phase gen.world matches 5 run data remove storage gen:mobs read[{requirements:{moon_phase:{exact:5}}}]
execute unless score .moon_phase gen.world matches 6 run data remove storage gen:mobs read[{requirements:{moon_phase:{exact:6}}}]
execute unless score .moon_phase gen.world matches 7 run data remove storage gen:mobs read[{requirements:{moon_phase:{exact:7}}}]
execute unless score .moon_phase gen.world matches 8 run data remove storage gen:mobs read[{requirements:{moon_phase:{exact:8}}}]
tellraw @a[tag=gen.dev.debug.all] {"nbt":"read[].requirements.moon_phase","storage": "gen:mobs","color":"light_purple"}
execute if score .moon_phase gen.world matches ..1 run data remove storage gen:mobs read[{requirements:{moon_phase:{min:2}}}]
execute if score .moon_phase gen.world matches ..2 run data remove storage gen:mobs read[{requirements:{moon_phase:{min:3}}}]
execute if score .moon_phase gen.world matches ..3 run data remove storage gen:mobs read[{requirements:{moon_phase:{min:4}}}]
execute if score .moon_phase gen.world matches ..4 run data remove storage gen:mobs read[{requirements:{moon_phase:{min:5}}}]
execute if score .moon_phase gen.world matches ..5 run data remove storage gen:mobs read[{requirements:{moon_phase:{min:6}}}]
execute if score .moon_phase gen.world matches ..6 run data remove storage gen:mobs read[{requirements:{moon_phase:{min:7}}}]
execute if score .moon_phase gen.world matches ..7 run data remove storage gen:mobs read[{requirements:{moon_phase:{min:8}}}]
tellraw @a[tag=gen.dev.debug.all] {"nbt":"read[].requirements.moon_phase","storage": "gen:mobs","color":"red"}

execute if score .moon_phase gen.world matches 2.. run data remove storage gen:mobs read[{requirements:{moon_phase:{max:1}}}]
execute if score .moon_phase gen.world matches 3.. run data remove storage gen:mobs read[{requirements:{moon_phase:{max:2}}}]
execute if score .moon_phase gen.world matches 4.. run data remove storage gen:mobs read[{requirements:{moon_phase:{max:3}}}]
execute if score .moon_phase gen.world matches 5.. run data remove storage gen:mobs read[{requirements:{moon_phase:{max:4}}}]
execute if score .moon_phase gen.world matches 6.. run data remove storage gen:mobs read[{requirements:{moon_phase:{max:5}}}]
execute if score .moon_phase gen.world matches 7.. run data remove storage gen:mobs read[{requirements:{moon_phase:{max:6}}}]
execute if score .moon_phase gen.world matches 8.. run data remove storage gen:mobs read[{requirements:{moon_phase:{max:7}}}]
execute if score .moon_phase gen.world matches 9.. run data remove storage gen:mobs read[{requirements:{moon_phase:{max:8}}}]
tellraw @a[tag=gen.dev.debug.all] {"nbt":"read[].requirements.moon_phase","storage": "gen:mobs","color":"red"}
