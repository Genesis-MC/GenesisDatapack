
execute unless score @s gen.mana.current = @s gen.stat.mana_pool run function gen:mana/internal/regenerate
function gen:mana/internal/display/convert
# REPLACE FOLLOWING WITH SMITHED
title @s actionbar [\
    {"font":"gen:NEGATIVE_HALVED", "score":{"objective":"gen.mana.current","name":"@s"}},\
    {"font":"gen:NEGATIVE_HALVED", "text":"/"},\
    {"font":"gen:NEGATIVE_HALVED", "score":{"objective":"gen.stat.mana_pool","name":"@s"}},\
    {"font":"gen:HIGHER_NUMBERS",  "score":{"objective":"gen.mana.current","name":"@s"}},\
    {"font":"gen:HIGHER_NUMBERS",  "text":"/"},\
    {"font":"gen:HIGHER_NUMBERS",  "score":{"objective":"gen.stat.mana_pool","name":"@s"}},\
    {"font":"gen:NEGATIVE_HALVED", "score":{"objective":"gen.mana.current","name":"@s"}},\
    {"font":"gen:NEGATIVE_HALVED", "text":"/"},\
    {"font":"gen:NEGATIVE_HALVED", "score":{"objective":"gen.stat.mana_pool","name":"@s"}},\
    "",\
    {"font":"gen:MANA_DISPLAY",    "text":"b"},\
    {"font":"gen:MANA_DISPLAY",    "text":"("},\
    {"font":"gen:MANA_DISPLAY",    "text":")"},\
    {"font":"gen:MANA_DISPLAY",    "score":{"objective":"gen.mana.display","name":"@s"}},\
    {"font":"gen:DISPLAY_NEGATIV", "score":{"objective":"gen.mana.display","name":"@s"}},\
    {"font":"gen:MANA_DISPLAY",    "text":"a"},\
    ]
