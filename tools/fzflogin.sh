#!/bin/bash

de=`echo "sway plasma hyprland niri" | tr ' ' '\n'`

selectedde=`printf "$de" | fzf`
echo "Running $selectedde"

if [ "$selectedde" == "sway" ]; then
    exec sway
elif [ "$selectedde" == "hyprland" ]; then
    exec start-hyprland
else 
elif [ "$selectedde" == "niri" ]; then
    exec niri-session
else 
    exec startplasma-wayland
fi
