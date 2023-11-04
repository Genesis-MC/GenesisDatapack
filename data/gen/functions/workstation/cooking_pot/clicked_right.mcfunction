#___NOTE_DUMMY_H___
# ___STOP___USING_ILLEGAL___IDENTIFIERS_H
# ___THIS_IS_NOT_STANDARD__COMPLIANT

# Called on the interaction of work stations that are left-clicked by a player.
# on vehicle = item display
# on vehicle on passengers = both interaction and marker
# use if entity @s[type=...] to select specific entity
tag @s add __this__
scoreboard players set #action gen.temp 0

execute if score #action gen.temp matches 0 on target if entity @s[predicate=!gen:is_sneaking] as @e[tag=__this__,limit=1] on vehicle at @s run function gen:workstation/cooking_pot/actions/remove_item
execute if score #action gen.temp matches 0 on target if entity @s[predicate=gen:is_sneaking] as @e[tag=__this__,limit=1] on vehicle at @s run function gen:workstation/cooking_pot/actions/remove_all_items

playsound minecraft:block.brewing_stand.brew block @a[distance=..32] ~ ~ ~ 1 1.5
particle minecraft:bubble_pop ~ ~0.8 ~ 0.25 0 0.25 0 6
tag @s remove __this__