
#!/usr/bin/env bash

config="$HOME/.config/rofi/logout-menu.rasi"

# Опции для главного меню
actions=$(echo -e "  Steam
 Heroic
 󱄲 Bottles
 $(printf '\u200A')󰍳 Minecraft")

# Функция для показа вложенного меню Steam
show_steam_menu() {
    # Извлекаем .desktop файлы из каталога Steam
    steam_apps=$(find ~/.local/share/applications/steam -name "*.desktop" -exec grep -h "^Name=" {} \; | cut -d'=' -f2)
    # Создаем меню с играми
    selected_game=$(echo -e "$steam_apps" | rofi -dmenu -i -config "${config}")
    # Проверяем, выбрана ли игра
    if [ -z "$selected_game" ]; then
        return  # Возвращаемся, если ничего не выбрано (включая Esc)
    fi
    # Получаем полное имя .desktop файла
    desktop_file=$(find ~/.local/share/applications/steam -name "*.desktop" | grep -F "$(echo "$selected_game")" | head -n 1)

    # Если файл найден, выполняем команду
    if [ -n "$desktop_file" ]; then
      exec `cat "${desktop_file}" | grep "^Exec" | sed -e 's/Exec=//'`
    fi
}

# Отображаем главное меню
selected_option=$(echo -e "$actions" | rofi -dmenu -i -config "${config}")

# Выполняем действия на основе выбранной опции
case "$selected_option" in
    *Steam)
        show_steam_menu
        ;;
    *Heroic)
        /usr/lib64/heroic-games-launcher-bin/heroic %U
        ;;
    *Bottles)
        flatpak run com.usebottles.bottles
        ;;
    *Minecraft)
        flatpak run ch.tlaun.TL
        ;;
esac
