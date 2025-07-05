yay -S --noconfirm --needed kmonad

sudo ln -sf ~/arch-config/config/systemd/user/kmonad.service /etc/systemd/system/kmonad.service

sudo systemctl enable --now kmonad
sudo systemctl start kmonad
