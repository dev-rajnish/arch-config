# Exit immediately if a command exits with a non-zero status
set -e

# Give people a chance to retry running the installation
trap 'echo "installation failed! You can retry by running: source ~/.local/share/omarchy/install.sh"' ERR

# Install everything
for f in ~/arch-config/install.d/*.sh; do source "$f"; done
for f in ~/arch-config/install.d/de/*.sh; do source "$f"; done
for f in ~/arch-config/install.d/de-service/*.sh; do source "$f"; done

echo "done"

# Ensure locate is up to date now that everything has been installed
#sudo updatedb

#gum confirm "Reboot to apply all settings?" && reboot
