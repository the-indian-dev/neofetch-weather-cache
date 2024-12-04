#!/bin/bash

LOGFILE="/home/ritabrata/.weather_log"

if ! ping -c 1 -q google.com &>/dev/null; then
    echo "No internet connection. Weather data not updated."
    exit 1
fi

echo "Internet Connection Present"

#Get Weather data
WEATHER=$(curl -s --connect-timeout 10 --max-time 15 'wttr.in/Bhubaneswar?format=3')

# Validate and update cache
if [ -n "$WEATHER" ]; then
    echo "$WEATHER" > "/home/ritabrata/.weather_cache"
    echo "$(date): Weather data updated successfully." >> "$LOGFILE"
else
    echo "$(date): Failed to fetch weather data. Cache not updated." >> "$LOGFILE"
fi


