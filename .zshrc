
export OMZ="$HOME/.oh-my-zsh"

# Checking for presence of oh-my-zsh
if [ ! -d  $OMZ ]; then
  git clone https://github.com/ohmyzsh/ohmyzsh.git $OMZ
fi


# Installing ZSH plugins if not found
## zsh-syntax-highlighting
if [ ! -d $OMZ/custom/plugins/zsh-syntax-highlighting ]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$OMZ/custom}/plugins/zsh-syntax-highlighting
fi
## zsh-autosuggestions
if [ ! -d $OMZ/custom/plugins/zsh-autosuggestions ]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-$OMZ/custom}/plugins/zsh-autosuggestions
fi
## zsh-completions
if [ ! -d $OMZ/custom/plugins/zsh-completions ]; then
  git clone https://github.com/zsh-users/zsh-completions.git ${ZSH_CUSTOM:-$OMZ/custom}/plugins/zsh-completions
fi


ZSH_THEME="robbyrussell"
plugins=(git zsh-syntax-highlighting zsh-autosuggestions zsh-completions)
source $OMZ/oh-my-zsh.sh


# check for catppuccin.tmux
if [ ! -d /home/$USER/.config/tmux/plugins/catppuccin/tmux ]; then
  mkdir -p ~/.config/tmux/plugins/catppuccin
  git clone https://github.com/catppuccin/tmux.git ~/.config/tmux/plugins/catppuccin/tmux
fi

OS_NAME="$(awk -F= '/^ID=/{print $2}' /etc/os-release | tr -d '"' | tr '[:upper:]' '[:lower:]')"
source ~/.zshrc.$OS_NAME

# Activating Virtual environment if exists
if [ -d $PWD/.venv ]; then
  source .venv/bin/activate
fi


export PATH=$PATH:/home/jags/.spicetify
