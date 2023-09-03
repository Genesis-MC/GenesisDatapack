#include <fstream>
#include <iostream>
#include <vector>
#include <unordered_map>
#include <string>
#include <array>
#include <iostream>

inline std::array<std::string, 65>  BiomeList = { "the_void","plains","sunflower_plains","forest","flower_forest","birch_forest","dark_forest","swamp","mangrove_swamp","jungle","sparse_jungle","bamboo_jungle","beach","mushroom_fields","meadow","stony_peaks","windswept_hills","windswept_gravelly_hills","windswept_forest","taiga","stony_shore","snowy_plains","ice_spikes","snowy_taiga","snowy_beach","grove","snowy_slopes","jagged_peaks","frozen_peaks","desert","savanna","savanna_plateau","windswept_savanna","badlands","wooded_badlands","eroded_badlands","river","frozen_river","ocean","warm_ocean","lukewarm_ocean","deep_lukewarm_ocean","cold_ocean","deep_ocean","deep_cold_ocean","frozen_ocean","deep_frozen_ocean","soul_sand_valley","warped_forest","nether_wastes","basalt_deltas","crimson_forest","the_end","small_end_islands","end_barrens","end_midlands","end_highlands","dripstone_caves","lush_caves","deep_dark","old_growth_birch_forest","old_growth_pine_taiga","old_growth_spruce_taiga","old_growth_spruce_taiga","cherry_grove" };

struct Biome { 
    Biome(const std::string& str,int diff):name(str),difficulty(diff)
    {

    }
    std::string name;
    int difficulty;
};
bool isValid(const std::string& biome){
    for(const auto& other : BiomeList){
        if(biome == other)
            return true;
    }
    return false;
}
int main() {
    std::vector<Biome> biomes = {{"minecraft:ocean", 2},
{"minecraft:deep_ocean", 3},
{"minecraft:warm_ocean", 1},
{"minecraft:lukewarm_ocean", 2},
{"minecraft:deep_lukewarm_ocean",3},
{"minecraft:cold_ocean",2},
{"minecraft:deep_cold_ocean",3},
{"minecraft:frozen_ocean",4},
{"minecraft:deep_frozen_ocean",4},
{"minecraft:mushroom_fields",1},
{"minecraft:jagged_peaks",5},
{"minecraft:frozen_peaks",5},
{"minecraft:stony_peaks",5},
{"minecraft:meadow",2},
{"minecraft:grove",3},
{"minecraft:cherry_grove",2},
{"minecraft:snowy_slopes",4},
{"minecraft:windswept_hills",4},
{"minecraft:windswept_forest",4},
{"minecraft:windswept_gravelly_hills",4},
{"minecraft:forest",3},
{"minecraft:flower_forest",2},
{"minecraft:taiga",4},
{"minecraft:snowy_taiga",4},
{"minecraft:old_growth_pine_taiga",5},
{"minecraft:old_growth_spruce_taiga",5},
{"minecraft:birch_forest",3},
{"minecraft:old_growth_birch_forest",4},
{"minecraft:dark_forest",5},
{"minecraft:jungle",4},
{"minecraft:sparse_jungle",3},
{"minecraft:bamboo_jungle",4},
{"minecraft:river",3},
{"minecraft:frozen_river",4},
{"minecraft:swamp",4},
{"minecraft:mangrove_swamp",5},
{"minecraft:beach",2},
{"minecraft:snowy_beach",3},
{"minecraft:stony_shore",3},
{"minecraft:plains",1},
{"minecraft:sunflower_plains",1},
{"minecraft:snowy_plains",4},
{"minecraft:ice_spikes",6},
{"minecraft:desert",4},
{"minecraft:savanna",3},
{"minecraft:savanna_plateau",3},
{"minecraft:windswept_savanna",4},
{"minecraft:badlands",5},
{"minecraft:wooded_badlands",5},
{"minecraft:eroded_badlands",6},
{"minecraft:dripstone_caves",5},
{"minecraft:lush_caves",4},
{"minecraft:deep_dark",7},
{"minecraft:nether_wastes",6},
{"minecraft:soul_sand_valley",8},
{"minecraft:warped_forest",6},
{"minecraft:crimson_forest",7},
{"minecraft:basalt_deltas",8},
{"minecraft:the_end",9},
{"minecraft:small_end_islands",9},
{"minecraft:end_midlands",10},
{"minecraft:end_highlands",10},
{"minecraft:end_barrens",9}
};
    std::ofstream ofile;
    std::string path = "vanilla";

    for(const auto& biome : biomes){
        if(!isValid(biome.name.substr(biome.name.find(":")+1))){
            std::cout << biome.name << " NOT VALID";
            std::cin.get();
        }
        
    }
    for(const auto& biome : biomes) {
        std::string name = biome.name;
        name = name.substr(name.find(":")+1);
        ofile.open(path + "/" + name + ".mcfunction");
        ofile 
        << "execute store result score #id gen.temp run data get storage gen:mobs cache.biome_ids[{Key:\""
        << biome.name
        << "\"}].Value"
        << "\nscoreboard players operation @e[type=#gen:alive_no_player,distance=..6] gen.biome = #id gen.temp"
        << "\nscoreboard players set @e[type=#gen:alive_no_player,distance=..6] gen.biome_difficulty "
        << biome.difficulty
        << "\nscoreboard players set #foundBiome gen.temp 1";
        ofile.close();
    }

    ofile.open("root.mcfunction");
    for(const auto& biome : biomes){
        ofile << "\nexecute if biome ~ ~ ~ " + biome.name + " run function gen:mobs/data/biomes/" + path + "/" + biome.name.substr(biome.name.find(":")+1);

    }

    ofile.close();
}