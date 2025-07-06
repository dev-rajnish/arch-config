# Exit immediately if a command exits with a non-zero status
set -e

# Give people a chance to retry running the installation
trap 'echo "installation failed! You can retry by running: source ~/arch-config/install.sh"' ERR

ascii_art="
               ╖                        ╔╕        
               ║                        ║  °      
╒══╗ ╔══╕ ╔══╕ ╠══╗     ╔══╕ ╔══╗ ╔══╗  ║  ╖ ╔══╗ 
╔══╣ ║    ║    ║  ║ ═══ ║    ║  ║ ║  ║ ╒╬╛ ║ ║  ║ 
╚══╝ ╜    ╚══╛ ╜  ╙     ╚══╛ ╚══╝ ╜  ╙  ║  ╙ ╚══╣ 
                                        ║    ╓  ║ 
                                       ╘╝    ╚══╝"
echo -e "\n$ascii_art\n"

sudo pacman -Sy --noconfirm --needed git curl

echo -e "\nCloning dev-rajnish.."

#rm -rf ~/arch-config/

#git clone https://github.com/dev-rajnish/arch-config.git ~/arch-config >/dev/null

echo -e "\nInstallation starting..."

# Install everything
for f in ~/arch-config/install.d/*.sh; do source "$f"; done
for f in ~/arch-config/install.d/de/*.sh; do source "$f"; done
for f in ~/arch-config/install.d/de-service/*.sh; do source "$f"; done
for f in ~/arch-config/install.d/kmonad/*.sh; do source "$f"; done

echo "copying config to .config"

ln -sf ~/arch-config/config/* ~/.config/

echo "done"

# Ensure locate is up to date now that everything has been installed
#sudo updatedb

#gum confirm "Reboot to apply all settings?" && reboot
