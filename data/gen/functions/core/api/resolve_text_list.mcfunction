#####################################################################
# core/api/resolve_text_list.mcfunction
# written by Eroxen
#
# Resolves a list of JSON text components.
#
# Storage input:
# - gen:core :
#   - resolve_text_list : List<text component>
#
# Storage output:
# - gen:core :
#   - resolve_text_list : List<text component>
#####################################################################

execute unless data storage gen:core resolve_text_list[0] run return 0
execute summon item_display run function gen:core/internal/resolve_text/list/on_item_display