data modify storage gen:menu lore.amulet set value []
data modify storage gen:menu lore.replace set value []
item replace entity 0001e4dd-0000-ca49-0002-425300000000 container.0 with structure_block
#1
function gen:menu/data/amulet/lore/stats/offensive

function gen:menu/data/amulet/lore/stats/defensive

function gen:menu/data/amulet/lore/stats/mana_related

function gen:menu/data/amulet/lore/stats/utils

data modify storage gen:menu lore.replace set from entity 0001e4dd-0000-ca49-0002-425300000000 item.tag.display.Lore