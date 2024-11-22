import json
import os
import argparse
from dataclasses import dataclass

@dataclass
class PathList:
    name : str
    items : list[str]
    paths : list['PathList']

def add_to_tree(root: PathList, path: list[str], item: str):
    current_node = root
    for folder in path:
        found = False
        if root.name == folder:
            found = True; 

        for child in current_node.paths:
            if child.name == folder:
                current_node = child
                found = True
                break
        
        if not found:
            new_node = PathList(name=folder, items=[], paths=[])
            current_node.paths.append(new_node)
            current_node = new_node
    
    current_node.items.append(item)

def getPathAndName(assetPath : str):
    start = assetPath.find("/BPs/") + 4
    end = assetPath.rfind("/", start)

    if assetPath[end + 1] == '/':
        end += 1
    
    part1 = assetPath[start+1:end].split('/')
    part2 = assetPath.split('.')[0].split("BP_")[-1]

    if(part2[0].isnumeric()):
        part2 = "_" + part2

    part2 = part2.replace('-', '_')
    for i in range(0, len(part1)):
        part1[i] = part1[i].replace('-', '_')

    return part1, part2


def generate_lua_string(node: PathList, indent: int = 0) -> str:
    indent_str = '      ' * indent
    lua_str = f"{indent_str}{node.name} = {{\n"

    if node.items:
        for item in node.items:
            lua_str += f"{indent_str}      {item},\n"

    if len(node.paths) > 0:
        lua_str += "\n"

    for path in node.paths:
        lua_str += generate_lua_string(path, indent + 1)
    if indent != 0:
        lua_str += f"{indent_str}}},\n"
    else:
        lua_str += f"{indent_str}}}\n"
    lua_str += "\n"
    return lua_str

def addJsonContents(pathlists: PathList, jsonFile):
    knowActors = ["ItemActor", "NestClass"]
    knowPaths = ["AssetPathName", "ObjectPath"]
    actor = "";
    path = ""
    firstkey = list(jsonFile[0]["Rows"])[0]
    for act in knowActors:
        try: 
            jsonFile[0]["Rows"][firstkey][act]
        except:
            print(act + " failed trying another one")
        else:
            actor = act 
            break

    if actor == "":
        raise KeyError("Actor not know")

    for pat in knowPaths:
        try: 
            jsonFile[0]["Rows"][firstkey][actor][pat]
        except:
            print(pat + " failed trying another one")
        else:
            path = pat 
            break

    if actor == "":
        raise KeyError("Path not know")

    for dictionary in jsonFile[0]["Rows"]:
        paths, name = getPathAndName(jsonFile[0]["Rows"][dictionary][actor][path])
        fullname = name + " = \"" + jsonFile[0]["Rows"][dictionary][actor][path] + "\""
        add_to_tree(pathlists, paths, fullname)

def main():
    # Create the argument parser
    parser = argparse.ArgumentParser(description="Auto generate ITR2 Items file, given path to a folder that has json files.")
    parser.add_argument(
        "folder",
        type=str,
        help="Path to the folder to process."
    )

    args = parser.parse_args()

    # Ensure the provided folder exists
    if not os.path.exists(args.folder) or not os.path.isdir(args.folder):
        print(f"Error: The folder '{args.folder}' does not exist or is not a directory.")
        return

    pathlists = PathList(name="Items", items=[], paths=[])

    # Iterate over files in the specified folder
    for filename in os.listdir(args.folder):
        file_path = os.path.join(args.folder, filename)  # Construct the full path to the file
        if os.path.isfile(file_path) and filename.endswith(".json"):  # Process only JSON files
            with open(file_path, "r") as f:
                jsonFile = json.load(f)  # Parse JSON file
            addJsonContents(pathlists=pathlists, jsonFile=jsonFile)

    # Generate the output file
    with open("ITR2_Items.lua", "w") as finalFile:
        finalFile.write("--AUTO GENERATED BY ITR2 UPDATE SCRIPT--\nlocal " + generate_lua_string(pathlists))

if __name__ == "__main__":
    main()
