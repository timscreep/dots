import subprocess
import sys
direction = sys.argv[1]
first_move = subprocess.getoutput(f"hyprctl dispatch movewindow {direction}")
if direction == "r":
    sign = "+"
elif direction == "l":
    sign = "-"
else:
    sign = ""

if first_move != "ok":
    if (direction == "r" or direction == "l"):
        subprocess.getoutput(f"hyprctl dispatch movetoworkspace r{sign}1")
    elif (direction == "d" or direction == "u"):
        subprocess.getoutput(f"hyprctl dispatch layoutmsg togglesplit")
        if (direction == "u"):
            subprocess.getoutput(f"hyprctl dispatch layoutmsg swapsplit")

print(direction)
