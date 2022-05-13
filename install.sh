#!/bin/bash

DIR="$(cd "$(dirname "$0")" && pwd)"

echo -e "\nAre you sure you want to copy the content of this configuration to \"~/.config/i3\"?"
read -r -p "Any existing config files in that directory will be overwritten. (y/N)? " answer
case ${answer:0:1} in
    y|Y)
        # Copy files (and remove this script when done).
        cp -v -r "$DIR"/.config $HOME/;;
    *)
        # Concent not granted.
        echo "No config files have been modified.";;
esac
