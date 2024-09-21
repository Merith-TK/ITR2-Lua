import json
import argparse
import os
from dataclasses import dataclass, field
from typing import List, Dict

@dataclass
class PathList:
    name: str
    items: List[str] = field(default_factory=list)
    paths: List["PathList"] = field(default_factory=list)

type_defs = {
    # "Mag": "Magazines",
    # "ValuableItem": "Valuables",
    # "Ash": "Ashes",
}

type_suffixes = {key + "_": value for key, value in type_defs.items()}
type_prefixes = {key + "_": value for key, value in type_defs.items()}

def add_to_tree(
    root: PathList,
    path: List[str],
    item: str,
    item_type: str,
    type_suffixes: Dict[str, str],
    type_prefixes: Dict[str, str],
):
    current_node = root

    # Navigate through the path
    for folder in path:
        found = False
        for child in current_node.paths:
            if child.name == folder:
                current_node = child
                found = True
                break
        if not found:
            new_node = PathList(name=folder)
            current_node.paths.append(new_node)
            current_node = new_node

    item_name = item.split(" = ")[0]
    existing_items = {i.split(" = ")[0]: i for i in current_node.items}

    # Handle item type differentiation
    if item_type == "magazine":
        item_entry = item.replace("Mag_", "").replace("_Mag", "")
        if item_entry not in existing_items.values():
            current_node.items.append(item_entry)
        return

    # Handle weapons or other item types
    sub_node = None
    for child in current_node.paths:
        if child.name == item_name:
            sub_node = child
            break
    if not sub_node:
        sub_node = PathList(name=item_name)
        current_node.paths.append(sub_node)
    current_node = sub_node

    item_entry = f"Item = " + item.split(" = ")[1]
    if item_entry not in existing_items.values():
        current_node.items.append(item_entry)

def get_path_and_name(asset_path: str, double_slash: bool):
    start = asset_path.find("/BPs/") + 4
    end = asset_path.rfind("/", start)
    if double_slash:
        end = asset_path.rfind("/", start, end)
    part1 = asset_path[start + 1:end].split("/")
    part2 = asset_path.split(".")[0]
    part2 = part2[part2.find("BP_") + 3:]
    if part2[0].isnumeric():
        part2 = "_" + part2
    part2 = part2.replace("-", "_")
    return part1, part2

def add_json_contents(
    pathlists: PathList,
    actor: str,
    path: str,
    json_data: Dict,
    double: bool,
    item_type: str,
    type_suffixes: Dict[str, str],
    type_prefixes: Dict[str, str],
):
    for dictionary in json_data[0]["Rows"]:
        paths, name = get_path_and_name(
            json_data[0]["Rows"][dictionary][actor][path], double
        )
        fullname = name + ' = "' + json_data[0]["Rows"][dictionary][actor][path] + '"'
        add_to_tree(pathlists, paths, fullname, item_type, type_suffixes, type_prefixes)

def generate_lua_string(node: PathList, indent: int = 0) -> str:
    indent_str = "\t" * indent
    lua_str = f"{indent_str}{node.name} = {{\n"

    if node.items:
        for item in node.items:
            lua_str += f"{indent_str}\t{item},\n"

    if node.paths:
        for path in node.paths:
            lua_str += generate_lua_string(path, indent + 1)
    lua_str += f"{indent_str}}},\n" if indent != 0 else f"{indent_str}}}\n"
    return lua_str

def main(input_dir: str, output_file: str):
    pathlists = PathList(name="Items")

    # Load JSON files from the input directory
    json_files = {
        "weapon": "DT_WeaponInfos.json",
        "item": "DT_GeneralItemInfos.json",
        "attachment": "DT_AttachmentInfos.json",
        "ammo": "DT_AmmoInfos.json",
        "magazine": "DT_AmmoContainerInfos.json",
        "artifact": "DT_ArtefactNestInfos.json",
    }

    for item_type, filename in json_files.items():
        with open(os.path.join(input_dir, filename), "r") as file:
            json_data = json.load(file)
            actor = "ItemActor" if item_type != "artifact" else "NestClass"
            path = "AssetPathName" if item_type != "artifact" else "ObjectPath"
            double = item_type == "weapon"
            add_json_contents(
                pathlists=pathlists,
                actor=actor,
                path=path,
                json_data=json_data,
                double=double,
                item_type=item_type,
                type_suffixes=type_suffixes,
                type_prefixes=type_prefixes,
            )

    # Generate and write the Lua file
    with open(output_file, "w") as final_file:
        final_file.write("local " + generate_lua_string(pathlists) + "return Items")

if __name__ == "__main__":
    # Set up argument parsing
    parser = argparse.ArgumentParser(
        description="Update script to process item info and generate Lua files."
    )
    parser.add_argument(
        "input_dir", type=str, help="Directory containing the JSON files"
    )
    parser.add_argument(
        "output_file",
        type=str,
        nargs="?",
        default="ITR2_Items.lua",
        help="Optional output Lua file (default is ITR2_Items.lua)",
    )

    args = parser.parse_args()

    # Call the main function with the parsed arguments
    main(args.input_dir, args.output_file)