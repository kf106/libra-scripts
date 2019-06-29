#!/bin/bash


# script to move libra balances to first address

# find the Libra terminal
libra="$(comm -12 <(xdotool search --name  'libra$'  | sort)  <(xdotool search --class 'Gnome-terminal'  | sort))"

# and activate 
xdotool windowactivate $libra

for i in {1..99}
do
  sleep 1
  xdotool type "tb $i 0 100"
  xdotool key KP_Enter;
  # 5s sleep to avoid 429 server errors
  sleep 5
done
