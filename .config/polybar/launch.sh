#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

(sleep 3; polybar background) &
(sleep 2; polybar example) &
(sleep 2; polybar example1) &
(sleep 3; polybar ext-background) &
#(sleep 2; polybar example2) &
