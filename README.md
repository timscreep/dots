![image](https://github.com/timscreep/dots/assets/81462085/3ad92418-eea9-4fbb-9db1-007433df08d8)
да, я на федоре и что вы мне сделаете?
```
git clone https://github.com/timscreep/dots.git
cd dots
sudo chmod +x setup
./setup
```
чуточку арча:
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
```
sudo cp -r catppuccin-mocha-mauve-standard+default/ /usr/share/themes/
gsettings set org.gnome.desktop.interface gtk-theme "catppuccin-mocha-mauve-standard+default"
```

установка hyprspace
```
hyprpm add https://github.com/KZDKM/Hyprspace
hyprpm enable Hyprspace
```
