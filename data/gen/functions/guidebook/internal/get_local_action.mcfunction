data remove storage gen:guidebook action
data modify storage gen:guidebook chapter_id set from storage gen:guidebook held_book.tag.genesis.guidebook.chapter_id
function gen:guidebook/api/retrieve_chapter

scoreboard players operation i gen.guidebook = clicked gen.guidebook
scoreboard players remove i gen.guidebook 1
data modify storage gen:temp macro set value {}
execute store result storage gen:temp macro.i int 1 run scoreboard players get i gen.guidebook
function gen:guidebook/internal/get_local_action_macro with storage gen:temp macro