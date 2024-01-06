#!/bin/bash
repeat=$1
string=$2
i=1
temp=""

while [ $i -le $repeat ]
do
  temp="$temp$string"
  ((++i))
done

echo $temp
