#!/bin/bash

# Fetch weather data and save it to a cache file
curl -s 'wttr.in/Bhubaneswar?format=3' > /home/ritabrata/.weather_cache

