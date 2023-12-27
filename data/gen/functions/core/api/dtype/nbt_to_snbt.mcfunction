#####################################################################
# core/api/dtype/nbt_to_snbt.mcfunction
# written by Eroxen
#
# Converts an NBT object to a SNBT string (text component)
#
# Storage input:
# - gen:core :
#   - dtype.nbt : object
#
# Storage output:
# - gen:core :
#   - dtype.snbt : string
#####################################################################

data modify storage gen:core dtype.buffer set value {buffer:''}

execute if data storage gen:core dtype.nbt.text run data modify storage gen:core dtype.buffer.value set from storage gen:core dtype.nbt.text
execute if data storage gen:core dtype.nbt.text run function gen:core/internal/dtype/nbt_to_snbt/text with storage gen:core dtype.buffer

execute if data storage gen:core dtype.nbt.translate run data modify storage gen:core dtype.buffer.value set from storage gen:core dtype.nbt.translate
execute if data storage gen:core dtype.nbt.translate run function gen:core/internal/dtype/nbt_to_snbt/translate with storage gen:core dtype.buffer

execute if data storage gen:core dtype.nbt{italic:true} run data modify storage gen:core dtype.buffer.value set value "true"
execute if data storage gen:core dtype.nbt{italic:false} run data modify storage gen:core dtype.buffer.value set value "false"
execute if data storage gen:core dtype.nbt.italic run function gen:core/internal/dtype/nbt_to_snbt/add_italic with storage gen:core dtype.buffer

execute if data storage gen:core dtype.nbt{bold:true} run data modify storage gen:core dtype.buffer.value set value "true"
execute if data storage gen:core dtype.nbt{bold:false} run data modify storage gen:core dtype.buffer.value set value "false"
execute if data storage gen:core dtype.nbt.bold run function gen:core/internal/dtype/nbt_to_snbt/add_bold with storage gen:core dtype.buffer

execute if data storage gen:core dtype.nbt.color run data modify storage gen:core dtype.buffer.value set from storage gen:core dtype.nbt.color
execute if data storage gen:core dtype.nbt.color run function gen:core/internal/dtype/nbt_to_snbt/add_color with storage gen:core dtype.buffer

function gen:core/internal/dtype/nbt_to_snbt/close with storage gen:core dtype.buffer
data modify storage gen:core dtype.snbt set from storage gen:core dtype.buffer.buffer