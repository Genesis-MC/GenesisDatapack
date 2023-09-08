execute as @a unless score @s gen.mana.current = @s gen.mana.max run function gen:mana/internal/regenerate
execute as @a run function gen:mana/internal/display/convert
data modify storage smithed.actionbar:input message set value {\
    priority: "persistent",\
    json: '[\
    {"font":"gen:negative_halved", "score":{"objective":"gen.mana.current","name":"@s"}},\
    {"font":"gen:negative_halved", "text":"/"},\
    {"font":"gen:negative_halved", "score":{"objective":"gen.stat.mana_pool","name":"@s"}},\
    {"font":"gen:higher_numbers",  "score":{"objective":"gen.mana.current","name":"@s"}},\
    {"font":"gen:higher_numbers",  "text":"/"},\
    {"font":"gen:higher_numbers",  "score":{"objective":"gen.stat.mana_pool","name":"@s"}},\
    {"font":"gen:negative_halved", "score":{"objective":"gen.mana.current","name":"@s"}},\
    {"font":"gen:negative_halved", "text":"/"},\
    {"font":"gen:negative_halved", "score":{"objective":"gen.stat.mana_pool","name":"@s"}},\
    {"text":""},\
    {"font":"gen:mana_display",    "text":"B"},\
    {"font":"gen:mana_display",    "score":{"objective":"gen.mana.display","name":"@s"}},\
    {"font":"gen:display_negativ", "score":{"objective":"gen.mana.display","name":"@s"}},\
    {"font":"gen:mana_display",    "text":"A"},\
    {"text":""},\
    {"font":"gen:mana_display",    "text":"b"},\
    {"font":"gen:mana_display",    "text":"-"},\
    {"font":"gen:mana_display",    "text":"a"}\
    ]'}
execute as @a run function #smithed.actionbar:message
