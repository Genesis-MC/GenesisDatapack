execute as @a[tag=!gen.mana.drowning] at @s anchored eyes if block ^ ^ ^ #gen:water run tag @s add gen.mana.drowning
execute as @a[tag=!gen.mana.drowning] at @s anchored eyes if block ^ ^ ^ #gen:waterloggable[waterlogged=true] run tag @s add gen.mana.drowning
execute as @a[tag=gen.mana.drowning] at @s anchored eyes unless block ^ ^ ^ #gen:water unless block ^ ^ ^ #gen:waterloggable[waterlogged=true] if data entity @s {Air:300s} run tag @s remove gen.mana.drowning

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
execute as @a[tag=!gen.mana.drowning] run function #smithed.actionbar:message

execute if entity @a[tag=gen.mana.drowning,limit=1] run data modify storage smithed.actionbar:input message set value {\
    priority: "persistent",\
    json: '[\
    {"font":"genesis:mana/display_drown",          "text":"B"},\
    {"font":"genesis:mana/display_drown",          "color":"#4e5c24", "score":{"objective":"gen.mana.display","name":"@s"}},\
    {"font":"genesis:mana/display_negative",       "score":{"objective":"gen.mana.display","name":"@s"}},\
    {"font":"genesis:mana/display_drown",          "text":"A"},\
    {"text":""},\
    {"font":"genesis:mana/small_numbers_negative", "score":{"objective":"gen.mana.current.real","name":"@s"}},\
    {"font":"genesis:mana/small_numbers_negative", "text":"/"},\
    {"font":"genesis:mana/small_numbers_negative", "score":{"objective":"gen.stat.mana_pool","name":"@s"}},\
    {"font":"genesis:mana/small_numbers_drown",    "score":{"objective":"gen.mana.current.real","name":"@s"}},\
    {"font":"genesis:mana/small_numbers_drown",    "text":"/"},\
    {"font":"genesis:mana/small_numbers_drown",    "score":{"objective":"gen.stat.mana_pool","name":"@s"}},\
    {"font":"genesis:mana/small_numbers_negative", "score":{"objective":"gen.mana.current.real","name":"@s"}},\
    {"font":"genesis:mana/small_numbers_negative", "text":"/"},\
    {"font":"genesis:mana/small_numbers_negative", "score":{"objective":"gen.stat.mana_pool","name":"@s"}}\
    ]'}
execute as @a[tag=gen.mana.drowning] run function #smithed.actionbar:message
