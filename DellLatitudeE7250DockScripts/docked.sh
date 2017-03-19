#!/bin/bash
logger "Switching to Docked Mode"
logger "Emabeling Docked Displays"

function Displays {
  logger "Disabling Dock Displays"
  su setkeh -c 'DISPLAY=:0 xrandr --output DP1-1 --auto  --output DP1-2 --auto --left-of DP1-1 --output eDP1 --off'
}

function Networking {
  logger "StartingEthernet Interface"
  sudo /usr/bin/netctl start ethernet

  logger "Stopping Wifi Interface"
  sudo /usr/bin/netctl stop wlp2s0-SETKEH-OFFICE-AN
}

logger "Entering Docked Mode"
logger "Configuring Displays"
Displays

logger "Configuring Networking"
Networking