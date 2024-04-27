execute store result score #xp gen.professions run data get storage gen:crops crop_definition.harvest.xp 1
tellraw @a[tag=gen.dev.debug] ["",{"text":"gen/crops -> ","color":"#CBBECB"},{"text":"Received ","color":"yellow"},{"score":{"name":"#xp","objective":"gen.professions"},"color":"gold"},{"text":" xp","color":"yellow"}]
#execute if score #xp gen.professions matches 1.. run function gen:professions/farming/api/xp/apply
## WILL BE REIMPLEMENTED WHEN PROFESSIONS SYSETM IS FULLY RELEASED