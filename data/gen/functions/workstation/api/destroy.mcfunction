#####################################################################
# workstation/api/destroy.mcfunction
# written by Eroxen
#
# When called on the root item display of a workstation, deletes the workstation
#####################################################################

execute on passengers if entity @s[type=marker,tag=gen.workstation.data] if data entity @s data.workstation.destroy.drop_loot run function gen:workstation/internal/drop_loot with entity @s data.workstation.destroy

execute on passengers run kill @s
kill @s

execute store success score .suffering_exists gen.workstation if entity @e[type=item_display,tag=gen.workstation.root,tag=gen.workstation.suffering,limit=1]