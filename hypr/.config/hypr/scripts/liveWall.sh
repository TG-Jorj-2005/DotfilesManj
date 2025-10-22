#!/bin/zsh
MONITOR="eDP-1"

VIDEO="$HOME/DotfilesManj/hypr/.config/hypr/wallpaper/skull.mp4"

sleep 2

# Pornește mpvpaper (separat, fără sunet, în buclă, pe tot ecranul)
mpvpaper "$MONITOR" "$VIDEO" -- --loop --no-audio --geometry=100%x100%

