#!/usr/bin/env bash

# Where to save recordings:
OUTDIR="$HOME/Videos"
mkdir -p "$OUTDIR"

# Filename with timestamp:
FILE="$OUTDIR/record_$(date +%Y%m%d_%H%M%S).mp4"

# Toggle recording:
if pgrep wf-recorder >/dev/null; then
    # Stop recording
    pkill wf-recorder
    notify-send "Stopped Recording. File saved in $FILE."
else
    # Start full-screen recording in background
    wf-recorder -r 60 -f "$FILE" &
    notify-send "Recording Screen..."
fi
