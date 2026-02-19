#!/bin/bash

OUT="/tmp/album_art.png"
FALLBACK="$HOME/.config/hypr/default.png"

update_art() {
    url=$(playerctl metadata mpris:artUrl 2>/dev/null)

    if [ -z "$url" ]; then
        cp "$FALLBACK" "$OUT"
        return
    fi

    if [[ "$url" == file:* ]]; then 
        cp "$FALLBACK" "$OUT"
        return
    fi

    curl -sL "$url" -o "$OUT"
}

# Initial update (important)
update_art

# Listen for changes
playerctl --all-players metadata --follow \
  --format '{{mpris:artUrl}}' |
while read -r _; do
    update_art
done

