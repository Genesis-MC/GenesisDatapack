#####################################################################
# guidebook/api/retrieve_chapter.mcfunction
# written by Eroxen
#
# Retrieves the specified chapter from storage if it exists.
#
# Storage input:
# - gen:guidebook :
#   - chapter_id : String
#
# Storage output:
# - gen:guidebook :
#   - chapter : chapter object or null
#####################################################################

data modify storage gen:guidebook retrieve_chapter set from storage gen:guidebook chapters
execute store result score #i gen.temp run data get storage gen:guidebook retrieve_chapter
function gen:guidebook/internal/retrieve_chapter_loop
execute if score #different gen.temp matches 0 run data modify storage gen:guidebook chapter set from storage gen:guidebook retrieve_chapter[-1]
execute if score #different gen.temp matches 1 run data remove storage gen:guidebook chapter

tellraw @s[tag=gen.dev.debug] {"text":"retrieved chapter: ","extra":[{"storage":"gen:guidebook","nbt":"chapter.id"}]}