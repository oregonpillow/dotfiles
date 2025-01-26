#!/bin/bash


# mute sound
/usr/bin/osascript -e "set volume with output muted"
# disable bluetooth
/opt/homebrew/bin/blueutil --power 0
# disable wifi
/usr/sbin/networksetup -setairportpower en0 off
# enable sleep
sudo /usr/bin/pmset -b disablesleep 0
# force sleep
sudo /usr/bin/pmset sleepnow > /dev/null
