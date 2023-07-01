# ProjectGenesis
 
 Official GitHub Page for the Project Genesis MCRPG Datapack.
 --Currently in Development--
 
## Custom crops

You can run `/function gen:crops/api/give_all_seeds` to get all seeds, including debug seeds. `/function gen:crops/api/give_seeds` or its alias `/function gen:_/crops/give_seeds` gives all non-debug seeds. I think the rest is pretty straight-forward, you just place the seeds to plant a new crop and break the block to break it. You can bone-meal them as well, and when you bone-meal a fully grown crop it harvests and replants itself. There's two test seeds `foo` and `bar` which don't really do anything, but you can use them for testing.
If you want to add new crops, you simply add one line to the function `gen:crops/data/registry`. The format of adding a new crop is explained in there and you can also just copy and edit one of the other crops.

Config options (scoreboard `gen.config`):

`crops.bonemeal_harvest_and_replant`: 0 or 1 (default=1): controls whether or not fully grown crops can be bonemealed to harvest and replant them.

## Gear

### tungsten
All the custom equipable gear uses [tungsten](https://github.com/PuckiSilver/mc-tungsten) to be read efficiently

For creating such a piece of equipment, this just means that you have to add a specific attribute modifier per slot it should be detected in to it.
In a give command, it looks like this:
```hs
give @s warped_fungus_on_a_stick{AttributeModifiers:[{
        AttributeName:"minecraft:generic.luck",
        Name:"tungsten.mainhand",
        Amount:-0.000000000001,
        Operation:0,
        UUID:[I;12,42069,-0,10],
        Slot:"mainhand"},
    {
        AttributeName:"minecraft:generic.luck",
        Name:"tungsten.offhand",
        Amount:-0.000000000001,
        Operation:0,
        UUID:[I;12,42069,-0,11],
        Slot:"offhand"}]}
```
And in a loot table, just add a function that sets the attributes
```json
{   "function": "minecraft:set_attributes",
    "modifiers": [{
        "attribute": "minecraft:generic.luck",
        "name": "tungsten.offhand",
        "amount": -0.000000000002,
        "operation": "addition",
        "id": "0000000c-0000-a455-0000-00000000000c",
        "slot": "head"
}]}
```
> **Note**: The `name`, `uuid` and `slot` should change according to the slot, check tungsten's README for more info

> **Note**: For some reason it is -2^12 in loot tables while being -1^12 in the give command, don't ask me why it is that way, it just works

To **run a function when changing a piece of equipment**, you can just add it to the `#tungsten:swap/<SLOT>` function tag, you can access the item through the storage `tungsten:player Item`

> For more info, ask @PuckiSilver

### Stat
When changing a custom piece of equipment, stats for that slot get recalculated

To add a stat, you have to
- add it's scoreboards to the `gen:gear/data/stat/reload` function, following the scheme present
- add the commands to the `gen:gear/data/stat/<SLOT>` function, following the scheme present

The current stats are:<br>
`physical_power`, `magic_power`, `attack_speed`, `health`, `armor`, `speed`, `luck`, `armor_toughness`, `knockback_resistance`, `artifact_power`, `mana_pool`, `mana_regen`, `ability_haste`

The stats that don't get added together, but use the same system are:<br>
`ability`, `cooldown`, `set`

> For more info, ask @PuckiSilver

### Custom Mob Spawning
In this pack mob spawning is data driven this means that
- you can add your own custom mobs quite easily!
- you can remove mobs you dont like by a simple click of a button!


go into data/gen/functions/mobs/data/registry to add your mobs and see some example
### ONLY WORKS FOR NOW FOR ZOMBIES SKELETONS CREPEERS SPIDERS YOU CAN ADD THE OTHERS IF YOU WISH GO TO gen:mobs/internal/spawning/custom_mob/ENTITY THEN FOLLOW THE PATTERN
#    registry.<ENTITY> will list all the possible values the listed <ENTITY> can be
#    name is only used for JSON searching and identifying
#    base_entity (SOON) is what the mob is like if 20% of zombies became piglins you have to set it to minecraft:piglin other wise defaults to the key it is assigned to
#    name is what used to search for the json key
#    spawn_pack (SOON) is the amount of mobs it will spawn of that type
#    spawn_pack_distance (SOON) is the amount of distance the pack mobs will be seperated deaults to 1 block
#    weight is self explantory
#    weight_multiplier (SOON) will increase base wieght with the multipler * level 
#   requirements
# 
# Tips !
# you can set (min:420) no need to set the max!
# you can set (max:69) no need to set the min!
#
#           moon_phase ( 1- 8 ) NOTE:::(for optimiztion reasons please include the correct range dont put min:5000,max:10000)
#                       min for the minum moon cycle number
#                       max is forthe maximum moon cylce number
#                       exact is the exact moon cycle
#           level
#                   min is the minum level the mob must be 
#                   max is the max level the mob must be
#           block : "minecraft:dirt" the block it must be summoned under (THE NAMESPACE IS REQUIRED YOU CANT JUST PUT 'dirt')
#           entity_data is the nbt when
###Example
# data modify storage gen:mobs registry.zombie append value {name:"My Custom Mob!",weight:1000,requirements:{moon_phase:{max:7},level:{min:5},block:"minecraft:diamond_block"},entity_data:{CustomName:'"Diamond Man!"'}}
# IF YOU ADD A NEW REGISTRED ITEM TO THE REGISTRY NOT THROUGH THIS FILE DO THIS /function gen:mobs/internal/registry/changed (this will be changed but when i figure it out)
