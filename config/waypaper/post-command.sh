#yay -S --noconfirm --needed swww waypaper

# git clone https://github.com/dev-rajnish/walls.git ~/walls/
#!/usr/bin/env bash

# Launch waypaper and capture output
selected=$(swww query 2>&1 | awk -F': ' '{print $5}')
# Check if a wallpaper was selected
wal -i "$selected"

# Optionally apply GTK + QT
wal-gtk -i "$selected" && wal-gtk apply
wal-qt -i "$selected"

notify-send "🖼 Wallpaper Changed" "Theme applied with pywal"
