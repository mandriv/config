#!/bin/bash
CURR_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
# Contants - change accordingly
TERMINAL_LOCAL_CONFIG_FILE_DIR="$HOME/.zshrc"
TERMINAL_CONFIG_DIR="$CURR_DIR/terminal"
ATOM_CONFIG_DIR="$HOME/.atom/config.cson"
EDITOR_CONFIG_DIR="$CURR_DIR/editor"
# Copy terminal config
cp "$TERMINAL_LOCAL_CONFIG_FILE_DIR" "$TERMINAL_CONFIG_DIR"
# Copy editor config and generate package list
cp "$ATOM_CONFIG_DIR" "$EDITOR_CONFIG_DIR"
apm list --installed --bare > editor/package-list.txt
# For installation use 'apm install --packages-file package-list.txt'

# Done
echo "Config is now up to date!"
exit 0
# Author: mandriv
