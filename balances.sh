#!/bin/bash

# script to query the Libra CLI addresses for their balances

# find the Libra terminal
libra="$(comm -12 <(xdotool search --name  'libra$'  | sort)  <(xdotool search --class 'Gnome-terminal'  | sort))"

for i in {0..99}
do
  xdotool windowactivate $libra
  xdotool type "q b $i"
  xdotool key KP_Enter;
done

