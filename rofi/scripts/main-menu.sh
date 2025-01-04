#!/usr/bin/env bash

config="$HOME/.config/rofi/logout-menu.rasi"

actions=$(echo -e " Games\n $(printf '\u200A')  Suspend\n   Hibernate\n   Logout")

# Display logout menu
selected_option=$(echo -e "$actions" | rofi -dmenu -i -config "${config}")

# Perform actions based on the selected option
case "$selected_option" in
*Lock)
  echo -e ls ~/.local/share/applications/
  ;;
*Shutdown)
  systemctl poweroff
  ;;
*Reboot)
  systemctl reboot
  ;;
*Suspend)
  hyprlock & systemctl suspend
  ;;
*Hibernate)
  systemctl hibernate
  ;;
*Logout)
  hyprctl dispatch exit 0
  ;;
esac

