scoreboard players set #guidebook.is_bookmarked gen.temp 0
function gen:guidebook/internal/bookmark/query with storage gen:guidebook chapter
execute if score #guidebook.is_bookmarked gen.temp matches 0 run data modify storage gen:guidebook macro.bookmark_button set value '{"text":"\\u1005","hoverEvent":{"action":"show_text","contents":[{"text":"Add Bookmark"}]},"clickEvent":{"action":"run_command","value":"/trigger gen.guidebook set 1003"}}'
execute if score #guidebook.is_bookmarked gen.temp matches 1 run data modify storage gen:guidebook macro.bookmark_button set value '{"text":"\\u1006","hoverEvent":{"action":"show_text","contents":[{"text":"Remove Bookmark"}]},"clickEvent":{"action":"run_command","value":"/trigger gen.guidebook set 1004"}}'
execute if data storage gen:guidebook chapter{id:""} run data modify storage gen:guidebook macro.bookmark_button set value '{"text":"\\u1005","color":"#f4e3bd"}'

execute store result score #guidebook.bookmark_count gen.temp run data get storage gen:guidebook bookmarks
execute if score #guidebook.bookmark_count gen.temp matches 0 run data modify storage gen:guidebook macro.bookmarks_button set value '{"text":"\\u1007","color":"#f4e3bd"}'
execute if score #guidebook.bookmark_count gen.temp matches 1.. run data modify storage gen:guidebook macro.bookmarks_button set value '{"text":"\\u1007","hoverEvent":{"action":"show_text","contents":[{"text":"View Bookmarks"}]},"clickEvent":{"action":"run_command","value":"/trigger gen.guidebook set 1005"}}'

execute store result score #guidebook.backward_history_count gen.temp run data get storage gen:guidebook history.backward
execute if score #guidebook.backward_history_count gen.temp matches 0 run data modify storage gen:guidebook macro.backward_history_button set value '{"text":"\\u1003","color":"#f4e3bd"}'
execute if score #guidebook.backward_history_count gen.temp matches 1.. run data modify storage gen:guidebook macro.backward_history_button set value '{"text":"\\u1003","hoverEvent":{"action":"show_text","contents":[{"text":"Back to Previous Chapter"}]},"clickEvent":{"action":"run_command","value":"/trigger gen.guidebook set 1001"}}'

execute store result score #guidebook.forward_history_count gen.temp run data get storage gen:guidebook history.forward
execute if score #guidebook.forward_history_count gen.temp matches 0 run data modify storage gen:guidebook macro.forward_history_button set value '{"text":"\\u1004","color":"#f4e3bd"}'
execute if score #guidebook.forward_history_count gen.temp matches 1.. run data modify storage gen:guidebook macro.forward_history_button set value '{"text":"\\u1004","hoverEvent":{"action":"show_text","contents":[{"text":"Back to Next Chapter"}]},"clickEvent":{"action":"run_command","value":"/trigger gen.guidebook set 1002"}}'

data modify storage gen:guidebook macro.navbar set value '{"font":"genesis:guidebook","text":"\\ua001","extra":[{"text":"\\u1002","hoverEvent":{"action":"show_text","contents":[{"text":"To Index Page"}]},"clickEvent":{"action":"run_command","value":"/trigger gen.guidebook set 1000"}},{"storage":"gen:guidebook","nbt":"macro.backward_history_button","interpret":true},{"storage":"gen:guidebook","nbt":"macro.forward_history_button","interpret":true},{"storage":"gen:guidebook","nbt":"macro.bookmark_button","interpret":true},{"storage":"gen:guidebook","nbt":"macro.bookmarks_button","interpret":true},{"text":"\\ua002\\u1001\\ua003"},{"storage":"gen:guidebook","nbt":"macro.chapter_name"},{"text":"\\n"}],"color":"#aa7c5f"}'