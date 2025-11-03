#!/usr/bin/zsh
clear

HOME_DIR="$HOME"

echo "
██████╗  ██████╗ ████████╗███████╗██╗██╗     ███████╗███████╗
██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██║██║     ██╔════╝██╔════╝
██║  ██║██║   ██║   ██║   █████╗  ██║██║     █████╗  ███████╗
██║  ██║██║   ██║   ██║   ██╔══╝  ██║██║     ██╔══╝  ╚════██║
██████╔╝╚██████╔╝   ██║   ██║     ██║███████╗███████╗███████║
╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝
                                                             
  *Dotfiles setup utility*
"
sleep 2

function check_program() {
  if yay -Q "$1" 2> /dev/null ; then
    echo "Already installed $1, proceeding..."
  else
    echo "$1 is not installed, installing $1"
    yay -S --noconfirm "$1"
  fi
}
check_program stow
stow --target=/home/"$USER" .


cd "$HOME_DIR"

# Bat theming
check_program bat
bat cache --build

# Loading the .zshrc file to install all the necessary plugins
clear
echo "*Loading .zshrc*"
source "$HOME_DIR/.zshrc"

# Loading font-config
fc-cache -fv
