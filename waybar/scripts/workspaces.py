import subprocess

hyprctl_output = subprocess.getoutput(
    "hyprctl activewindow | grep workspace: | cut -d ' ' -f2"
)
print("󰜬 ")
