
abilities = {
    2557:   "gen:ability/data/summon_tnt",
    12:     "gen:ability/data/tellraw_ability_id",
    165:    "gen:ability/data/tellraw_ability_id",
    100905: "gen:ability/data/tellraw_ability_id",
    2354:   "gen:ability/data/tellraw_ability_id",
    2346:   "gen:ability/data/tellraw_ability_id",
    231:    "gen:ability/data/tellraw_ability_id",
    13:     "gen:ability/data/tellraw_ability_id",
    61:     "gen:ability/data/tellraw_ability_id",
    27:     "gen:ability/data/tellraw_ability_id",
    479:    "gen:ability/data/tellraw_ability_id",
    2456:   "gen:ability/data/tellraw_ability_id",
    901:    "gen:ability/data/tellraw_ability_id",
    96:     "gen:ability/data/tellraw_ability_id",
    107:    "gen:ability/data/tellraw_ability_id",
    127:    "gen:ability/data/tellraw_ability_id",
}

dictionary = "ability_dictionary"
dictionary_folder = "ability_dictionary"

ability_id_score = ".id gen.ability"

# uncomment next line to hard-code the base path, will try to automatically get it otherwise
# base_path = "gen:gear/internal/ability"

def main():
    global abilities
    abilities = dict(sorted(abilities.items()))
    recursive(0, abilities)

def recursive(depth, abilities) -> str:
    filename = f'{dictionary_folder}/{depth}-{list(abilities.keys())[0]}..{list(abilities.keys())[-1]}' if depth else 'spell_dictionary' if depth else dictionary

    if len(abilities) < 8:
        with open(get_full_path(filename), 'w') as function:
            for ability_id, ability_function in abilities.items():
                function.write(f'execute if score {ability_id_score} matches {ability_id} run function {ability_function}\n')
        return base_path + '/' + filename

    each = len(abilities) // 4 # integer division
    overshoot = (len(abilities) / 4) - each # only the thing after 0,
    idx1 = each+1   if overshoot >= 0.25 else each
    idx2 = idx1+each+1 if overshoot >= 0.5  else idx1+each
    idx3 = idx2+each+1 if overshoot >= 0.75 else idx2+each

    with open(get_full_path(filename), 'w') as function:
        function.write(f'execute if score {ability_id_score} matches {list(abilities.keys())[0]   }..{list(abilities.keys())[idx1-1]} run function {recursive(depth+1, dict(list(abilities.items())[:idx1]))    }\n')
        function.write(f'execute if score {ability_id_score} matches {list(abilities.keys())[idx1]}..{list(abilities.keys())[idx2-1]} run function {recursive(depth+1, dict(list(abilities.items())[idx1:idx2]))}\n')
        function.write(f'execute if score {ability_id_score} matches {list(abilities.keys())[idx2]}..{list(abilities.keys())[idx3-1]} run function {recursive(depth+1, dict(list(abilities.items())[idx2:idx3]))}\n')
        function.write(f'execute if score {ability_id_score} matches {list(abilities.keys())[idx3]}..{list(abilities.keys())[-1]    } run function {recursive(depth+1, dict(list(abilities.items())[idx3:]))    }\n')
    
    return base_path + '/' + filename

def get_base_path() -> str:
    import re
    path = re.sub(
        r".*data[\\/]\\?([a-z_0-9\.\-]+)[\\/]\\?functions[\\/]\\?([a-z_0-9\\/\.\-]+)[\\/]\\?[^\\/]*\.py$",
        "\\1:\\2",
        __file__
    )

    if path == __file__:
        from time import sleep
        print("Can't figure out a valid path, please just hard-code it")
        sleep(4)
        quit()

    path = path.replace('\\', '/')
    path = path.replace('//', '/')

    return path

def get_full_path(function_name):
    folder_path = '/'.join(__file__
        .replace('\\', '/')
        .replace('//', '/')
        .split('/')[:-1])

    return folder_path + '/' + function_name + '.mcfunction'

if __name__ == "__main__":
    if not 'base_path' in globals():
        global base_path
        base_path = get_base_path()
    
    import os
    folder_path = '/'.join(__file__
        .replace('\\', '/')
        .replace('//', '/')
        .split('/')[:-1]) + '/' + dictionary_folder
    try:
        for file_name in os.listdir(folder_path):
            os.remove(folder_path + '/' + file_name)
        os.rmdir(folder_path)
    except: print("IT DINDT WORKS I CAMT DELETE")
    os.mkdir(folder_path)

    main()
