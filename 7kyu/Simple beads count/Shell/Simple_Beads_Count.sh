#!/bin/bash

count_red_beads() {
  local n=$1
  
  if [ "$n" -lt 2 ]; then
    echo 0
  else
    echo $((2 * (n - 1)))
  fi
}

# Read input and call the function
count_red_beads "$1"
