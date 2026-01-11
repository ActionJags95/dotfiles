# exec Hyprland in minimal system
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  exec start-hyprland > /dev/null
fi
