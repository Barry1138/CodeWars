#!/bin/bash

 if [ "$1" -le "3" ] 
  then
    echo 0
    exit
  elif  [ "$1" -le "5" ]
  then
    echo 3
    exit
  fi
  
  declare -a threes
  declare -a fives
  threes[0]=3
  fives[0]=5
  three_mult=3
  five_mult=5
  i=2
  j=2
  
  five_mult=$[$i*$five_mult] 
  while [ $five_mult -lt $1 ]
  do
    
    fives[i-1]=$five_mult
    i=$[$i+1]
    five_mult=$[$i*5]  
  done
  
  three_mult=$[$j*$three_mult]
  while [ $three_mult -lt $1 ]
  do
    threes[j-1]=$three_mult
    j=$[$j+1]
    three_mult=$[$j*3]  
  done
  
  mults=(`for mult in "${threes[@]}" "${fives[@]}" ; do echo "$mult" ; done | sort -du`)
  sm=0
  for mult in ${mults[@]}
  do
    sm=$[$sm+$mult]
    #echo $sm
  done
  
  echo $sm
