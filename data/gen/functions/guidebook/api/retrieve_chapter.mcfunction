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

data modify storage gen:temp macro set value {}
data modify storage gen:temp macro.id set from storage gen:guidebook chapter_id

function gen:guidebook/internal/retrieve_chapter_macro with storage gen:temp macro

tellraw @s[tag=gen.dev.debug] {"text":"retrieved chapter: ","extra":[{"storage":"gen:guidebook","nbt":"chapter.id"}]}