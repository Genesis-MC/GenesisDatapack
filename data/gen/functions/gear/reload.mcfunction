function gen:gear/data/stat/reload
tellraw @a[tag=gen.dev.debug] ["",{"text":"Genesis","color":"#DF9DE3"},{"text":" ->","color":"yellow"},{"text":" Reloading ","color":"green"},{"text":"gear ","color":"yellow"},{"text":"module","color":"green"}]

#Passives
scoreboard objectives add gen.passive.frostbite dummy
scoreboard objectives add gen.passive.awakened_shadows dummy
scoreboard objectives add gen.passive.ferrshadow_cd dummy
scoreboard players set @a gen.passive.ferrshadow_cd 0
scoreboard objectives add gen.passive.time_dilation_statboost dummy
scoreboard objectives add gen.passive.heavy_metal_statboost dummy
scoreboard objectives add gen.passive.fortitude_of_the_undying_statboost dummy
scoreboard objectives add gen.passive.fortitude_of_the_undying_cd dummy
scoreboard objectives add gen.passive.fortitude dummy
scoreboard players set @a gen.passive.fortitude 0
scoreboard objectives add gen.passive.steadfast_cd dummy
scoreboard players set @a gen.passive.steadfast_cd 0

#Activated Abilities
scoreboard objectives add gen.active.polar_vortex_timer dummy
scoreboard objectives add gen.active.revitalize1_cd dummy
scoreboard objectives add gen.active.revitalize2_cd dummy
scoreboard objectives add gen.active.revitalize3_cd dummy
scoreboard objectives add gen.active.stance_swap_onslaught_statboost dummy

#Item Classes
scoreboard objectives add gen.class.elemental dummy


scoreboard objectives add gen.passive.health dummy
scoreboard objectives add gen.passive.ylvl dummy
scoreboard objectives add gen.passive.damage_dealt minecraft.custom:damage_dealt
scoreboard objectives add gen.passive.damage_taken minecraft.custom:damage_taken


scoreboard objectives add gen.bth.damage_absorbed minecraft.custom:minecraft.damage_absorbed
scoreboard objectives add gen.bth.damage_taken minecraft.custom:minecraft.damage_taken
scoreboard objectives add gen.bth.wearing_block_helmet dummy


schedule function gen:gear/internal/secupdate 1s replace
schedule function gen:gear/internal/5tickupdate 1s replace
schedule function gen:gear/internal/10tickupdate 1s replace
scoreboard objectives add gen.ability.trigger_wfoas minecraft.used:minecraft.warped_fungus_on_a_stick
