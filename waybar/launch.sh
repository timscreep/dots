#!/usr/bin/env bash
sleep 3
killall -q waybar
sleep 0.2
waybar -c ~/.config/waybar/config
disown &
