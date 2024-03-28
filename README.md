![image](https://github.com/timscreep/dots/assets/81462085/a4f3b5a4-d1d6-414e-a359-e2f0ae481646)




я на Nobara (Fedora)
```
sudo dnf install git curl flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
reboot
```
```
cd /opt/
sudo git clone https://github.com/timscreep/dots.git
sudo chown -R <имя>:<имя> dots
cd dots
chmod +x setup
./setup
```

