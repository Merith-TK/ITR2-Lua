import os
import argparse
import re
from dataclasses import dataclass

@dataclass
class PathList:
    name: str
    items: list[str]
    paths: list['PathList']

def add_to_tree(root: PathList, path: str, item: str):
    current_node = root
    for part in path.split("."):
        found = False
        for child in current_node.paths:
            if child.name == part:
                current_node = child
                found = True
                break
        if not found:
            new_node = PathList(name=part, items=[], paths=[])
            current_node.paths.append(new_node)
            current_node = new_node
    current_node.items.append(item)

def generate_lua_string(node: PathList, indent: int = 0) -> str:
    indent_str = '\t' * indent
    lua_str = f"{indent_str}{node.name} = {{\n"

    for item in node.items:
        lua_str += f"{indent_str}\t{item}"

    for path in node.paths:
        lua_str += generate_lua_string(path, indent + 1)

    lua_str += f"{indent_str}}},\n"
    return lua_str

def contains_specific_word(string, keywords):
    words = re.findall(r'[A-Z][a-z]*|[a-z]+|[A-Z]+(?![a-z])', string)
    for keyword in keywords:
        if keyword in words:
            return True
    return False

def generate_string(func, keywords):
    name, params = func
    try:
        parts = name.split(":")
        path = parts[0].split(".", 1)[-1]  # Extract the part after the first '.'
        method_name = parts[1]
    except IndexError:
        raise ValueError("Invalid function format")

    if contains_specific_word(method_name, keywords):
        param_str = ", ".join(params)
        output = (
            f"{method_name} = function(func)\n"
            f"\t\t-- Params: {param_str} --\n"
            f"\t\tRegisterHook(\"/Script/IntoTheRadius2.{name}\", func)\n"
            f"\t\tend,\n"
        )
        return path, output
    else:
        raise KeyError("Not an event")

def process_functions(file_path, keywords):
    result = "-- AUTO-GENERATED BY EVENTS LIB UPDATE SCRIPT --\n"
    functions = []
    pathlists = PathList(name="Events", items=[], paths=[])

    with open(file_path, 'r') as file:
        for line in file:
            try:
                func = process_line(line)
                if func:
                    functions.append(func)
            except KeyError:
                pass

    for func in functions:
        try:
            path, string = generate_string(func, keywords)
            add_to_tree(pathlists, path, string)
        except KeyError:
            pass

    result += generate_lua_string(pathlists).rstrip(",\n") + "\nreturn Events\n"

    with open("Events.lua", "w") as final_file:
        final_file.write(result)

def process_line(line):
    stripped_line = line.strip()
    if stripped_line.startswith("function"):
        stripped_line = stripped_line.replace("function ", "", 1)
        if ":" in stripped_line and "(" in stripped_line:
            prefix, rest = stripped_line.split(":", 1)
            prefix = prefix[1:]
            method_name, args = rest.split("(", 1)
            args = args.split(")")[0]
            method_output = f"{prefix}:{method_name.strip()}"
            arg_output = [arg.strip() for arg in args.split(",") if arg.strip()]
            return method_output, arg_output
    raise KeyError("Not a function")

def main():
    parser = argparse.ArgumentParser(description="Process a Lua file and generate event hooks.")
    parser.add_argument("lua_file", type=str, help="Path to the Lua file to process.")
    parser.add_argument("keywords", type=str, nargs="+", help="Keywords to process.")
    args = parser.parse_args()

    if not os.path.isfile(args.lua_file) or not args.lua_file.endswith(".lua"):
        print(f"Error: '{args.lua_file}' is not a valid Lua file.")
        return

    try:
        process_functions(args.lua_file, args.keywords)
    except Exception as e:
        print(f"Error processing the file: {e}")

if __name__ == "__main__":
    main()
