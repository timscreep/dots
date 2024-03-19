#!/bin/bash

# Переключить раскладку клавиатуры
keyboard="at-translated-set-2-keyboard"
hyprctl switchxkblayout $keyboard next
value=$(hyprctl devices | grep -i $keyboard -A 2 | grep -i "active" | cut -d ":" -f2 )
# Вывести уведомление о текущей раскладке
notify-send "Current Keyboard Layout:" "${value}"
