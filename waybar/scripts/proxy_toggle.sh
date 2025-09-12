#!/bin/bash

XRAY_BIN="/usr/local/bin/xray"
CONFIG_PATH="$HOME/.config/xray/config.json"

if pgrep -f "xray" > /dev/null; then
  notify-send "Xray Proxy" "Останавливаю прокси..."
  sudo systemctl stop v2raya.service
  notify-send "Xray Proxy" "Прокси отключен"
else
  notify-send "Xray Proxy" "Запускаю прокси..."
  sudo systemctl start v2raya.service
  curl 2ip.io
  notify-send "Xray Proxy" "Прокси включен"
fi

