#!/bin/bash

escape_json() {
  sed 's/\\/\\\\/g; s/"/\\"/g'
}

print_state() {
  title=$(playerctl metadata title 2>/dev/null)
  if [[ ${#title} -gt 25 ]]; then
    title="${title:0:25}..."
  fi

  player=$(playerctl metadata --format "{{ playerName }}" 2>/dev/null)
  if [[ ${#player} -gt 25 ]] ; then
    player="${player:0:25}..."
  fi

  artist=$(playerctl metadata artist 2>/dev/null)
  if [[ ${#artist} -gt 25 ]] ; then
    player="${artist:0:25}..."
  fi

  title=$(printf "%s" "$title" | escape_json)
  player=$(printf "%s" "$player" | escape_json)
  artist=$(printf "%s" "$artist" | escape_json)

  if [ -z "$title" ]; then
    printf '{"text":"No media playing"}\n'
  else
    printf '{"text":"%s - %s","alt":"%s"}\n' \
      "$title" "$artist" "$player"
  fi
}

# initial output (CRUCIAL)
print_state

# now follow changes
playerctl metadata --follow \
  --format '{{title}}|{{playerName}}|{{artist}}' 2>/dev/null |
while IFS="|" read -r title player artist; do
  if [[ ${#title} -gt 25 ]]; then
    title="${title:0:25}..."
  fi

  if [[ ${#player} -gt 25 ]] ; then
    player="${player:0:25}..."
  fi

  if [[ ${#artist} -gt 25 ]]; then
    artist="${artist:0:25}..."
  fi
 
  title=$(printf "%s" "$title" | escape_json)
  player=$(printf "%s" "$player" | escape_json)
  artist=$(printf "%s" "$artist" | escape_json)

  if [ -z "$title" ]; then
    printf '{"text":"No media playing"}\n'
  else
    printf '{"text":"%s - %s","alt":"%s"}\n' \
      "$title" "$artist" "$player"
  fi
done

