Думал я как-то над переездом на арч.
Прежде всего надо подключиться к интернету с помощью комманды
```
iwctl
```
```
station wlan0 show
station wlan0 scan
station wlan0 connect <имя сети>
```
и ввести пароль



далее начинаем устанвоку через 
```
archinstall
```
в additiona packages надо добавить git
далее после установки и ребута
```
nmcli device wifi connect <имя-сети> password <пароль>
```

далее устанавливаем yay:

```
cd /opt/
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R <имя>:<имя> yay-git
cd /yay-git
makepkg -si
```
далее все подтверждаем и можем переходить к следующему этапу

```
cd /opt/
sudo git clone https://github.com/timscreep/dots.git
sudo chown -R <имя>:<имя> dots
cd dots
chmod +x setup
./setup
```

Решил начать со списка flatpak приложений. и установки flatpak на арч.
sudo pacman -S flatpak hyprland firefox nautilus kitty rofi-wayland dmenu btop grim slurp amixer steam baobab mate-notification-daemon swww
