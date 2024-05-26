![image](https://github.com/timscreep/dots/assets/81462085/3ad92418-eea9-4fbb-9db1-007433df08d8)



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

гайс, для установки дровов на карты нвидиа я юзал этот гайд:
https://github.com/korvahannu/arch-nvidia-drivers-installation-guide
у меня просто были недопонимания по поводу хуков, здесь написано кратко, но это работает.




пропатч spotify с помощью spicetify и spotX
https://github.com/SpotX-Official/SpotX-Bash
```
bash <(curl -sSL https://spotx-official.github.io/run.sh)
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | sh
```

у меня звенят наушники, когда неправильно настроена штука энергосбережения для дискретки

```
echo 'on' > '/sys/bus/pci/devices/0000:01:00.0/power/control'
```

