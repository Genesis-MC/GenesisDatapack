execute as @a unless score @s gen.mana.current = @s gen.mana.max run function gen:mana/internal/regenerate
data modify storage smithed.actionbar:input message set value {\
    priority: "persistent",\
    json: '[\
    {"font":"genesis:mana/display",                "text":"B"},\
    {"font":"genesis:mana/display",                "color":"#4e5c24", "score":{"objective":"gen.mana.display","name":"@s"}},\
    {"font":"genesis:mana/display_negative",       "score":{"objective":"gen.mana.display","name":"@s"}},\
    {"font":"genesis:mana/display",                "text":"A"},\
    {"text":""},\
    {"font":"genesis:mana/small_numbers_negative", "score":{"objective":"gen.mana.current.real","name":"@s"}},\
    {"font":"genesis:mana/small_numbers_negative", "text":"/"},\
    {"font":"genesis:mana/small_numbers_negative", "score":{"objective":"gen.stat.mana_pool","name":"@s"}},\
    {"font":"genesis:mana/small_numbers",          "score":{"objective":"gen.mana.current.real","name":"@s"}},\
    {"font":"genesis:mana/small_numbers",          "text":"/"},\
    {"font":"genesis:mana/small_numbers",          "score":{"objective":"gen.stat.mana_pool","name":"@s"}},\
    {"font":"genesis:mana/small_numbers_negative", "score":{"objective":"gen.mana.current.real","name":"@s"}},\
    {"font":"genesis:mana/small_numbers_negative", "text":"/"},\
    {"font":"genesis:mana/small_numbers_negative", "score":{"objective":"gen.stat.mana_pool","name":"@s"}}\
    ]'}
execute as @a run function #smithed.actionbar:message
