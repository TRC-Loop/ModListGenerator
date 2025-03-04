# ModListGenerator

## Overview

ModListGenerator is a tool that extracts mod names and authors from Forge, NeoForge, and Fabric JAR files and exports the data in multiple formats (JSON, Markdown, and TXT). It features both a command-line interface (CLI) and a graphical user interface (GUI) for ease of use.

## Install
Linux/MacOS:

`curl -o install.sh https://raw.githubusercontent.com/TRC-Loop/ModListGenerator/main/install.sh && bash install.sh`

Windows:

`powershell -Command "Invoke-WebRequest -Uri https://raw.githubusercontent.com/TRC-Loop/ModListGenerator/main/install.bat -OutFile install.bat" && install.bat
`

## Run ModListGenerator
Use:

`modlistgen --help`

or just

`modlistgen`

for the GUI.

## Features

- Extract mod name and author from Forge, NeoForge, and Fabric mod JARs
- Export mod lists in JSON, Markdown, and TXT formats
- CLI support for automation
- GUI for easy usage
- Bulk extraction from directories

## Installation

Ensure you have Python installed, then install dependencies:

```sh
pip install -r requirements.txt
```

## Usage

### Command-Line Interface (CLI)

Extract mod information from specific JAR files:

```sh
python main.py --jar mod1.jar mod2.jar
```

Extract from a directory:

```sh
python main.py --dir /path/to/mods
```

Specify an output directory:

```sh
python main.py --dir /path/to/mods --output /path/to/output
```

### Graphical User Interface (GUI)

To open the GUI, simply run:

```sh
python main.py
```

From the GUI, you can:

- Select individual JAR files
- Select a directory for bulk extraction
- Choose an output directory
- Extract mod information with a button click

## Output

The extracted mod list will be saved in the chosen output directory as:

- `mod_list.json`
- `mod_list.md`
- `mod_list.txt`

## License

This project is licensed under the MIT License.

## Uninstall
Linux/MacOS:

`sudo rm /usr/local/bin/modlistgen`

`rm -rf ~/ModListGenerator`

