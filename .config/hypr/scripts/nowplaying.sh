#!/bin/bash

get_metadata() {
  key=$1
  playerctl metadata --format "{{ $key }}" 2> /dev/null
}

case $1 in

  "--title")
    title="$(get_metadata "xesam:title")"
    if [[ -z $title ]]; then
      echo "    -"
    else
      if [[ "${#title}" -gt 25 ]] ; then
        echo "    ${title:0:25}..."
      else
        echo "    $title"
      fi
    fi
    ;;

  "--album")
    album="$(get_metadata  "xesam:album")"
    if [[ -z $album ]]; then
      echo "󰀥    -"
    else
      if [[ "${#album}" -gt 25 ]] ; then
        echo "󰀥    ${album:0:25}..."
      else
        echo "󰀥    $album"
      fi
    fi
    ;;

  "--artist")
    artist="$(get_metadata "xesam:artist")"
    if [[ -z $artist ]]; then
      echo "󰠃    -"
    else
      if [[ "${#artist}" -gt 25 ]] ; then
        echo "󰠃    ${artist:0:25}..."
      else
        echo "󰠃    $artist"
      fi
    fi
    ;;

  "--status")
    status="$(playerctl status 2>/dev/null)"
    if [[ "$status" == "Playing" ]]; then
      echo " ‎"
    else
      echo " ‎"
    fi
    ;;

  "--player")
    player="$(get_metadata "mpris:trackid")"
    if [[ "$player" == *"spotify"* ]]; then
      echo "󰓇 ‎"
    elif [[ "$player" == *"chromuim" ]]; then
      echo "󰊯 ‎"
    elif [[ "$player" == *"brave"* ]]; then
      echo " ‎"
    fi
    ;;
  
  *)
    echo "Invalid choice"
    ;;
esac
