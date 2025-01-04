#!/usr/bin/env bash

notify-send "Getting list of available Wi-Fi networks..."
while true; do
# Get a list of available wifi connections and morph it into a nice-looking list
wifi_list=$(nmcli --fields "SECURITY,SSID" device wifi list | sed 1d | sed 's/  */ /g' | sed -E "s/WPA*.?\S/ /g" | sed "s/^--/ /g" | sed "s/  //g" | sed "/--/d")
rescan=$"Rescan"
exit=$"Exit"
connected=$(nmcli -fields WIFI g)
if [[ "$connected" =~ "enabled" ]]; then
	toggle="󰖪  Disable Wi-Fi"
elif [[ "$connected" =~ "disabled" ]]; then
	toggle="󰖩  Enable Wi-Fi"
fi

# Use rofi to select wifi network
chosen_network=$(echo -e "$exit\n$rescan\n$toggle\n$wifi_list" | uniq -u | rofi -dmenu -i -config ~/.config/rofi/wifi-bluetooth-menu.rasi -selected-row 1 -p "Wi-Fi SSID: " )
# Get name of connection
read -r chosen_id <<< "${chosen_network:3}"

if [ "$chosen_network" = "" ]; then
	exit
elif [ "$chosen_network" = "󰖩  Enable Wi-Fi" ]; then
	notify-send "Wi-fi" "Enabled"
	nmcli radio wifi on
  nmcli device wifi rescan
  sleep 5
elif [ "$chosen_network" = "Rescan"]; then
	nmcli device wifi rescan
	sleep 1
	notify-send "Wi-Fi" "Rescanning for networks..."
elif [ "$chosen_network" = "󰖪  Disable Wi-Fi" ]; then
	nmcli radio wifi off
elif [ "$chosen_network" = "Exit" ]; then
	break
else
	# Message to show when connection is activated successfully
  	success_message="You are now connected to the Wi-Fi network \"$chosen_id\"."
	# Get saved connections
	saved_connections=$(nmcli -g NAME connection)
	if [[ $(echo "$saved_connections" | grep -w "$chosen_id") = "$chosen_id" ]]; then
		nmcli connection up id "$chosen_id" | grep "successfully" && notify-send "Connection Established" "$success_message"
	else
		if [[ "$chosen_network" =~ "" ]]; then
			wifi_password=$(rofi -dmenu -p -config ~/.config/rofi/wifi-bluetooth-menu.rasi"Password: " )
		fi
		nmcli device wifi connect "$chosen_id" password "$wifi_password" | grep "successfully" && notify-send "Connection Established" "$success_message"
    fi
fi
done
