#!/bin/bash
# Directory containing your wallpapers
WALLPAPER_DIR="./wallpapers"

# Select a random wallpaper from the directory
WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Set the wallpaper with feh
feh --bg-scale "$WALLPAPER"

