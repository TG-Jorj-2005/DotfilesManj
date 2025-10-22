#!/bin/zsh

val=$(brightnessctl get);
max=$(brightnessctl max);
percent=$((val * 100 / max));

filled=$((percent / 10));
empty=$((10 - filled));

bar=$(printf "█%.0s" $(seq 1 $filled));
if ((percent<100)); then bar+=$(printf "░%.0s" $(seq 1 $empty)) fi

echo -e "$bar $percent%"
