#!/bin/bash

de=`echo "sway plasma hyprland " | tr ' ' '\n'`

selectedde=`printf "$de" | fzf`
echo "Running $selectedde"

if [ "$selectedde" == "sway" ]; then
    exec sway
elif [ "$selectedde" == "hyprland" ]; then
    exec hyprland
else 
    exec startplasma-wayland
fi
