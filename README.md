![image](https://github.com/timscreep/dots/assets/81462085/780feba3-76db-4c41-8f11-921f7d5d6573)



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

затем надо порыться в настройках pacman

```
sudo nano /etc/pacman.conf
```
в этом файле рекоменую раскоментить: цвета, паралельные загрузки и мультилиб

далее начинаем установку через 
```
archinstall
```
в additional packages надо добавить git и flatpak



далее после установки и ребута
```
nmcli device wifi connect <имя-сети> password <пароль>
```

далее устанавливаем yay:

```
cd /opt/
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R <имя>:<имя> yay-git
cd yay-git
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

