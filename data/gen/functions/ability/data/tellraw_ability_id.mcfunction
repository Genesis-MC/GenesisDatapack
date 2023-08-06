tellraw @a [{"selector":"@s","color":"gold"},{"text":" has cast an ability with the id: "},{"score":{"name":".id","objective":"gen.ability"}}]
scoreboard players operation .cooldown gen.ability = .id gen.ability
