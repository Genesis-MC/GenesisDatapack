# Genesis
 
 Official GitHub Page for the Genesis MCRPG Datapack.
 --Currently in Development--


## Guide Book

You can add chapters in `guidebook/data/load_chapters.mcfunction`. A quick explanation on how to link chapters:
- Each chapter has an `id`, `name`, `actions` and `pages`
- `id` is the unique id of the chapter, used to find it
- `name` is a short name that will be displayed in the navigation bar up top
- `actions` is a list of actions that can be taken from that chapter by triggering the `gen.guidebook` objective. Triggering this with value 1 will select the first action, value 2 the second action etc. These action can be "go to chapter `genesis:test/iron_ingot` for example. but later down the road we can maybe add other actions like showing a hologram of how to build a multiblock structure
- `pages`: The same pages tag of the written book, which is an array of JSON text components. These text components will get resolved before being put on the written book, so you can add nbt and score components.
- `requirement`: (optional) Any command that must return a success in order for the player to gain permission to open the chapter
 
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
`physical_power`, `magic_power`, `attack_speed`, `health`, `armor`, `speed`, `luck`, `armor_toughness`, `knockback_resistance`, `relic_power`, `mana_pool`, `mana_regen`, `ability_haste`

The stats that don't get added together, but use the same system are:<br>
`ability`, `cooldown`, `set`

> For more info, ask @PuckiSilver
