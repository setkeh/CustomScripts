#!/usr/bin/bash

function Displays {
  logger "Disabling Dock Displays"
  su setkeh -c 'DISPLAY=:0 /usr/bin/xrandr --output DP1-1 --off  --output DP1-2 --off --output eDP1 --mode 1366x768'
}

function Networking {
  logger "Stopping Ethernet Interface"
  sudo /usr/bin/netctl stop ethernet

  logger "Starting Wifi Interface"
  sudo /usr/bin/netctl start wlp2s0-SETKEH-OFFICE-AN
}

logger "Entering Undocked Mode"
logger "Configuring Displays"
Displays

logger "Configuring Networking"
Networking
