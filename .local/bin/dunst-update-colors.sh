#!/bin/sh

get_xresource_value() {
    pattern="$1"
    xrdb_input="$2"
	
	echo "$xrdb_input" | grep "dunst.$pattern" | cut -f 2
}

if ! XRDB_DATA=$(xrdb -query 2>/dev/null); then
    printf 'Error: Failed to query xrdb.\n' >&2
    exit 1
fi

export FONT=$(get_xresource_value "font" "$XRDB_DATA")

export FRAME_COLOR=$(get_xresource_value "frame_color" "$XRDB_DATA")

export LOW_BACKGROUND=$(get_xresource_value "low.background" "$XRDB_DATA")
export LOW_FOREGROUND=$(get_xresource_value "low.foreground" "$XRDB_DATA")
export LOW_FRAME_COLOR=$(get_xresource_value "low.frame_color" "$XRDB_DATA")

export NORMAL_BACKGROUND=$(get_xresource_value "normal.background" "$XRDB_DATA")
export NORMAL_FOREGROUND=$(get_xresource_value "normal.foreground" "$XRDB_DATA")
export NORMAL_FRAME_COLOR=$(get_xresource_value "normal.frame_color" "$XRDB_DATA")

export CRITICAL_BACKGROUND=$(get_xresource_value "critical.background" "$XRDB_DATA")
export CRITICAL_FOREGROUND=$(get_xresource_value "critical.foreground" "$XRDB_DATA")
export CRITICAL_FRAME_COLOR=$(get_xresource_value "critical.frame_color" "$XRDB_DATA")

# Fallback check (optional safeguard)
#if [ -z "$MY_BG" ] || [ -z "$MY_FG" ]; then
#    printf 'Warning: Dunst color variables were not found in Xresources.\n' >&2
#fi

# Generate configuration and reload Dunst
envsubst < "$HOME/.config/dunst/dunstrc.template" > "$HOME/.config/dunst/dunstrc"
dunstctl reload
