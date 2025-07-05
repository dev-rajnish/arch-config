- install iwd dhcpcd rfkill git curl vim 
- echo nameserver 1.1.1.1 > /etc/resolv.conf
- echo nameserver 8.8.8.8 >> /etc/resolv.conf

echo "[General]\nEnableNetworkConfiguration=true" > /etc/iwd/main.conf

- install hyprland waybar swww waypaper nwgclipman cliphist swaync
  kitty yazi jetbrainnerdfont noto-fonts fish starship
  eza brightnessctl batteryctl playerctl pwvucontrol wpctl
  gim slurp wlogout fuzzel rofi-wayland xdg-protocol-hyprland polkit
  wl-clipboard nwg-clipman cliphist jmtpfs udiskie kmonad bibata-cursor
  

- install yay
yay zen-bowser


- download config from git 
- backup existing config
- move configs
- ( config files = systemd, fcitx5, fish, fuzzel, gtk3, gtk4, hypr, kitty, kmonad, qt5ct,qt6ct, waybar, waypaper, 

- setup kmonad 
- systemctl --user daemon-reexec
- systemctl --user daemon-reload

sudo gpasswd -a $USER input
sudo gpasswd -a $USER uinput

echo uinput | sudo tee /etc/modules-load.d/uinput.conf


