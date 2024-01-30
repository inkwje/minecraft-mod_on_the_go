#!/usr/bin/env sh

# Paths I use
path_fr="$HOME/Documents/minecraft/versions/"
path_to="$HOME/.minecraft/mods"

# Populate the array with directories,
# starting with a number
echo "Minecraft versions found:"
vers=($(ls -d $path_fr/*/ | grep -o "[[:digit:]].*"))

# Check if array is empty
# if true   : send an error
# if false  : skip
if [[ ${#vers[@]} -eq 0 ]]; then
    echo "error: no version found"
    exit
fi

# Print the array in the format
# 1: version
# 2: version
# ...
# n: version
for ((i = 0; i < ${#vers[@]}; i++)); do
    echo "$((i+1)): ${vers[$i]}"
done
echo ""

read -rp "version of Minecraft to load [default: latest]: " nsw

# Check if the folder exists
# if true   : skip
# if false  : create it
if ! [[ -d $path_to ]]; then
    echo "the ~/.minecraft/mods folder does not exist"
    mkdir $path_to
fi

# Check if the folder contains files
# if true   : remove all
# if false  : skip
if [[ -n $path_to ]]; then
    rm -rf $path_to/*
fi

cp $path_fr/${vers[$nsw-1]}* $path_to/
echo "replaced files in ~/.minecraft/mods/ folder"
