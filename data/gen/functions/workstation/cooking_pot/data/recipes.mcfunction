data modify storage gen:workstation cooking_pot.recipes set value []

data modify storage gen:workstation cooking_pot.recipes append value \
{                                                                    \
    output_item :{id:"minecraft:tnt",Count:1b},                     \
    recipe_items : [                                                 \
    {"id":"minecraft:sponge"},                                          \
    {"id":"minecraft:wet_sponge"}                                           \
  ],                                                                 \
  time_to_cook: 100s,                                                \
  chance_of_failure : 0.5f,                                          \
  fail_function: "say false",                                        \
  xp: 6999                                                          \
}

data modify storage gen:workstation cooking_pot.recipes append value \
{                                                                    \
    output_item :{id:"minecraft:arrow",Count:1b},                     \
    recipe_items : [                                                 \
    {"id":"minecraft:beef"},                                          \
    {"id":"minecraft:ice"}                                           \
  ],                                                                 \
  time_to_cook: 100s,                                                \
  chance_of_failure : 0.5f,                                          \
  fail_function: "say false",                                        \
  xp: 6999,                                                          \
  success_function : "tellraw @p \"i am sorry for the delay for such a trivail thing :( but i am busy and honestly i got bored of minecraft in general\""                                      \
}