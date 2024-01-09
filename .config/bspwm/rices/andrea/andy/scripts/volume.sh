#!/usr/bin/env bash

#  ██╗   ██╗ ██████╗ ██╗     ██╗   ██╗███╗   ███╗███████╗
#  ██║   ██║██╔═══██╗██║     ██║   ██║████╗ ████║██╔════╝
#  ██║   ██║██║   ██║██║     ██║   ██║██╔████╔██║█████╗  
#  ╚██╗ ██╔╝██║   ██║██║     ██║   ██║██║╚██╔╝██║██╔══╝  
#   ╚████╔╝ ╚██████╔╝███████╗╚██████╔╝██║ ╚═╝ ██║███████╗
#    ╚═══╝   ╚═════╝ ╚══════╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝
#  gh0stzk            https://github.com/gh0stzk/dotfiles

get_vol () {
  volumen=$(pamixer --get-volume-human | tr -d '%')
  [[ $volumen == 'muted' ]] && echo "0" || echo "${volumen}"
}

get_icon () {
  local vol=$(get_vol)
  echo "images/$( [[ $vol == "0" ]] && echo "mute" || echo "volume" ).png"
}

case "$1" in
  --vol) get_vol;;
  --icon) get_icon;;
  --toggle-muted) pamixer -t;;
esac
