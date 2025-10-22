#!/bin/zsh
# Basic volume bar for Waybar (PipeWire + wpctl)
# suport până la 150%

# Citește volumul curent (0–1.5) și transformă în procente
vol=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{v=$2*100; if(v>100)v=100; print int(v)}')

# Calculează câte blocuri pline și goale (din 10)
# Rotunjire și corectare pentru bara de volum
if (( vol >= 100 )); then
    filled=10
else
    filled=$((vol / 10))
fi
empty=$((10 - filled))
# Creează bara vizuală
bar=$(printf "█%.0s" $(seq 1 $filled))
if (( vol < 100 )); then
bar+=$(printf "░%.0s" $(seq 1 $empty))
fi
# Afișează rezultatul (cu resetare culoare)
echo -e "   $bar $vol%"

