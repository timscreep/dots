![image](https://github.com/user-attachments/assets/becd24bb-2087-4f82-b3b9-deeedbd8e351)

![image](https://github.com/user-attachments/assets/be2ba6fe-0413-4338-91f1-48f558b675c0)



Софт, который использую:
Обои: [Waytrogen](https://github.com/nikolaizombie1/waytrogen) и [swww](https://github.com/LGFae/swww)
Модуль waybar: [polycat](https://github.com/2IMT/polycat)


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
gsettings set org.gnome.desktop.wm.preferences button-layout ""
```

установка hyprspace
```
hyprpm add https://github.com/KZDKM/Hyprspace
hyprpm enable Hyprspace
```
