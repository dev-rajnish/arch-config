yay -S --noconfirm --needed kmonad

sudo cp ~/arch-config/config/systemd/user/kmonad.service /usr/lib/systemd/system/kmonad.service

sudo mkdir /etc/kmonad
sudo cp ~/arch-config/config/kmonad/config.kbd /etc/kmonad/config.kbd

sudo systemctl enable --now kmonad
sudo systemctl start kmonad
sudo system daemon-reload
sudo systemctl status kmonad
