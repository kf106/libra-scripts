#!/bin/bash

# script to mint 10 trillion libra in 100 addresses

# find the Libra terminal
libra="$(comm -12 <(xdotool search --name  'libra$'  | sort)  <(xdotool search --class 'Gnome-terminal'  | sort))"

# and activate 
xdotool windowactivate $libra

for i in {0..99}
do
  sleep 1
  xdotool type "a c"
  xdotool key KP_Enter;
  sleep 1
  xdotool type "a m $i 10000000000000"
  xdotool key KP_Enter;
  # 10s sleep to avoid 429 server errors
  sleep 10
done
