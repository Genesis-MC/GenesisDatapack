#include <iostream> 
#include <vector>
#include <string>
#include <cstdint>

using namespace std;

int main() {
    const vector<string> biomes = {
    "minecraft:the_void",
    "minecraft:plains",
    "minecraft:sunflower_plains",
    "minecraft:forest",
    "minecraft:flower_forest",
    "minecraft:birch_forest",
    "minecraft:dark_forest",
    "minecraft:swamp",
    "minecraft:mangrove_swamp",
    "minecraft:jungle",
    "minecraft:sparse_jungle",
    "minecraft:bamboo_jungle",
    "minecraft:beach",
    "minecraft:mushroom_fields",
    "minecraft:meadow",
    "minecraft:stony_peaks",
    "minecraft:windswept_hills",
    "minecraft:windswept_gravelly_hills",
    "minecraft:windswept_forest",
    "minecraft:taiga",
    "minecraft:stony_shore",
    "minecraft:snowy_plains",
    "minecraft:ice_spikes",
    "minecraft:snowy_taiga",
    "minecraft:snowy_beach",
    "minecraft:grove",
    "minecraft:snowy_slopes",
    "minecraft:jagged_peaks",
    "minecraft:frozen_peaks",
    "minecraft:desert",
    "minecraft:savanna",
    "minecraft:savanna_plateau",
    "minecraft:windswept_savanna",
    "minecraft:badlands",
    "minecraft:wooded_badlands",
    "minecraft:eroded_badlands",
    "minecraft:river",
    "minecraft:frozen_river",
    "minecraft:ocean",
    "minecraft:warm_ocean",
    "minecraft:lukewarm_ocean",
    "minecraft:deep_lukewarm_ocean",
    "minecraft:cold_ocean",
    "minecraft:deep_ocean",
    "minecraft:deep_cold_ocean",
    "minecraft:frozen_ocean",
    "minecraft:deep_frozen_ocean",
    "minecraft:soul_sand_valley",
    "minecraft:warped_forest",
    "minecraft:nether_wastes",
    "minecraft:basalt_deltas",
    "minecraft:crimson_forest",
    "minecraft:the_end",
    "minecraft:small_end_islands",
    "minecraft:end_barrens",
    "minecraft:end_midlands",
    "minecraft:end_highlands",
    "minecraft:dripstone_caves",
    "minecraft:lush_caves",
    "minecraft:deep_dark",
    "minecraft:old_growth_birch_forest",
    "minecraft:old_growth_pine_taiga",
    "minecraft:old_growth_spruce_taiga",
    "minecraft:old_growth_spruce_taiga",
    "minecraft:cherry_grove"
    };
    cout << INT32_MAX << "\n\n\n";
    cout << "data modify storage gen:data biome_hashes set value [";
    
    for(int i = 0;i < biomes.size();i++) {
        cout << "{Key:\"" << biomes[i] << "\",Value:" << (((signed long long)(hash<string>{}(biomes[i]) % UINT32_MAX)) - INT32_MAX )<< "}";
        if(i != biomes.size()-1) {
            cout << ',';
        }
    }
    cout << ']';

}