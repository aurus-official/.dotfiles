#!/bin/bash

de=`echo "sway plasma " | tr ' ' '\n'`

selectedde=`printf "$de" | fzf`
echo "Running $selectedde"

if [ "$selectedde" == "sway" ]; then
    exec sway
else 
    exec startplasma-wayland
fi
