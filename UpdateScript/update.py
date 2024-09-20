import json
import argparse
import os
from dataclasses import dataclass


@dataclass
class PathList:
    name: str
    items: list[str]
    paths: list["PathList"]


type_defs = {
    # "Mag": "Magazines",
    # "ValuableItem": "Valuables",
    # "Ash": "Ashes",
}

type_suffixes = {key + "_": value for key, value in type_defs.items()}
type_prefixes = {key + "_": value for key, value in type_defs.items()}


def add_to_tree(
    root: PathList,
    path: list[str],
    item: str,
    item_type: str,
    type_suffixes: dict,
    type_prefixes: dict,
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
            new_node = PathList(name=folder, items=[], paths=[])
            current_node.paths.append(new_node)
            current_node = new_node

    item_name = item.split(" = ")[0]
    existing_items = {i.split(" = ")[0]: i for i in current_node.items}

    # Handle item type differentiation
    if item_type == "magazine":
        # Clean up and add magazine directly
        item_name = item_name.replace("Mag_", "")
        item_entry = f"Mag_{item_name} = " + item.split(" = ")[1]
        if item_entry not in existing_items.values():
            current_node.items.append(item_entry)
        return  # Exit after adding magazine

    # Handle weapons or other item types
    if item_type != "magazine":
        sub_node = None
        for child in current_node.paths:
            if child.name == item_name:
                sub_node = child
                break
        if not sub_node:
            sub_node = PathList(name=item_name, items=[], paths=[])
            current_node.paths.append(sub_node)
        current_node = sub_node

        # Check for existing "Item" key with the same value
        item_entry = f"Item = " + item.split(" = ")[1]
        if item_entry not in existing_items.values():
            current_node.items.append(item_entry)

    # Handle prefix removal and case adjustments as needed
    for prefix in type_prefixes.keys():
        if item_name.startswith(prefix):
            item_name = item_name[len(prefix) :]
            break

    if item_name and item_name[0].islower():
        item_name = item_name[0].upper() + item_name[1:]

    if item_name and item_name[0].isdigit():
        item_name = "_" + item_name

    # Reconstruct the item
    item = item_name + " = " + item.split(" = ")[1]

    # Check again for duplicates with the modified name
    if item not in existing_items.values():
        current_node.items.append(item)
    else:
        print(f"Duplicate item found for: {item_name}. Not adding.")


def getPathAndName(assetPath: str, doubleSlash: bool):
    start = assetPath.find("/BPs/") + 4
    end = assetPath.rfind("/", start)
    if doubleSlash:
        end = assetPath.rfind("/", start, end)
    part1 = assetPath[start + 1 : end].split("/")
    part2 = assetPath.split(".")[0]
    part2 = part2[part2.find("BP_") + 3 :]
    if part2[0].isnumeric():
        part2 = "_" + part2
    part2 = part2.replace("-", "_")
    return part1, part2


def addJsonContents(
    pathlists: PathList,
    actor: str,
    path: str,
    json_data: json,
    double: bool,
    item_type: str,
    type_suffixes: dict,
    type_prefixes: dict,
):
    for dictionary in json_data[0]["Rows"]:
        paths, name = getPathAndName(
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


def main(input_dir: str, output_file: str):
    pathlists = PathList(name="Items", items=[], paths=[])

    # Load JSON files from the input directory
    weaponJson = json.loads(
        open(os.path.join(input_dir, "DT_WeaponInfos.json"), "r").read()
    )
    generalItemInfos = json.loads(
        open(os.path.join(input_dir, "DT_GeneralItemInfos.json"), "r").read()
    )
    attachments = json.loads(
        open(os.path.join(input_dir, "DT_AttachmentInfos.json"), "r").read()
    )
    ammo = json.loads(open(os.path.join(input_dir, "DT_AmmoInfos.json"), "r").read())
    ammoContainer = json.loads(
        open(os.path.join(input_dir, "DT_AmmoContainerInfos.json"), "r").read()
    )
    artifacts = json.loads(
        open(os.path.join(input_dir, "DT_ArtefactNestInfos.json"), "r").read()
    )

    # Add JSON contents, with proper type identification
    addJsonContents(
        pathlists=pathlists,
        actor="ItemActor",
        path="AssetPathName",
        json_data=weaponJson,
        double=True,
        item_type="weapon",
        type_suffixes=type_suffixes,
        type_prefixes=type_prefixes,
    )
    addJsonContents(
        pathlists=pathlists,
        actor="ItemActor",
        path="AssetPathName",
        json_data=generalItemInfos,
        double=False,
        item_type="item",
        type_suffixes=type_suffixes,
        type_prefixes=type_prefixes,
    )
    addJsonContents(
        pathlists=pathlists,
        actor="ItemActor",
        path="AssetPathName",
        json_data=attachments,
        double=False,
        item_type="attachment",
        type_suffixes=type_suffixes,
        type_prefixes=type_prefixes,
    )
    addJsonContents(
        pathlists=pathlists,
        actor="ItemActor",
        path="AssetPathName",
        json_data=ammo,
        double=False,
        item_type="ammo",
        type_suffixes=type_suffixes,
        type_prefixes=type_prefixes,
    )
    addJsonContents(
        pathlists=pathlists,
        actor="ItemActor",
        path="AssetPathName",
        json_data=ammoContainer,
        double=False,
        item_type="magazine",
        type_suffixes=type_suffixes,
        type_prefixes=type_prefixes,
    )
    addJsonContents(
        pathlists=pathlists,
        actor="NestClass",
        path="ObjectPath",
        json_data=artifacts,
        double=False,
        item_type="artifact",
        type_suffixes=type_suffixes,
        type_prefixes=type_prefixes,
    )

    # Generate and write the Lua file
    with open(output_file, "w") as finalFile:
        finalFile.write("local " + generate_lua_string(pathlists) + "return Items")


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
