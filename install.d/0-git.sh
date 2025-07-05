ascii_art="
GIT
"

echo -e "\n$ascii_art\n"

sudo pacman -S --needed --noconfirm base-devel

if ! command -v git &>/dev/null; then
  sudo pacman -S --noconfirm git curl vim
fi
