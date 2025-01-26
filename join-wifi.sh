#!/bin/bash

# Check if both arguments are provided
if [ -z "$1" ] || [ -z "$2" ]; then
  read -p "Enter SSID: " SSID
  read -sp "Enter Password: " PASSWORD
  echo
else
  SSID="$1"
  PASSWORD="$2"
fi

# Set the Wi-Fi network

WIFI_DEVICE=$(networksetup -listnetworkserviceorder | grep "Hardware Port: Wi-Fi" | awk -F 'Device: ' '{print $2}' | awk -F ')' '{print $1}')

networksetup -setairportnetwork $WIFI_DEVICE "$SSID" "$PASSWORD"
