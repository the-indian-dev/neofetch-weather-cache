#!/bin/bash

if ! ping -c 1 -q google.com &>/dev/null; then
    echo "No internet connection. Weather data not updated."
    exit 1
fi

echo "Internet Connection Present"

# Fetch weather data and save it to a cache file
curl -s 'wttr.in/Bhubaneswar?format=3' > /home/ritabrata/.weather_cache

