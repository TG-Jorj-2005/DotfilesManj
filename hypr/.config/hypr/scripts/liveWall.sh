#!/bin/zsh
# ======================================
#  LIVE WALLPAPER (mpvpaper) permanent
#  by Jorj 🌿 pentru Hyprland + Manjaro
# ======================================

MONITOR="eDP-1"  # vezi hyprctl monitors
VIDEO="$HOME/DotfilesManj/hypr/.config/hypr/wallpaper/skull.mp4"

# dacă deja rulează, nu porni altul
if pgrep -x mpvpaper >/dev/null; then
    echo "mpvpaper already running, skipping..."
    exit 0
fi

# așteaptă puțin după startul Hyprland
sleep 2

# buclă infinită – repornește automat dacă moare
while true; do
    echo "[livewall] starting mpvpaper..."
    mpvpaper "$MONITOR" "$VIDEO" -- --loop --no-audio --geometry=100%x100% > /dev/null 2>&1
    echo "[livewall] mpvpaper exited, restarting in 2s..."
    sleep 2
done

