#!/bin/sh
while true; do
    xsetroot -name "$(date '+%Y-%m-%d %H:%M') | $(uptime -p)"
    sleep 1
done

