![image](https://github.com/timscreep/dots/assets/81462085/6e70b29a-99df-45ae-9d13-44aef3fe5835)


я перехожу на арч, так как там новая версия Hyprland
```
sudo pacman -S git curl flatpak
reboot
```
```
cd /opt/
sudo git clone https://github.com/timscreep/dots.git
sudo chown -R <имя>:<имя> dots
cd dots
chmod +x setup
chmod +x flatpakappssetup
./setup
./flatpakappssetup
```

