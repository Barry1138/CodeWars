#!/bin/bash
nbYear()
{
    population=$1
    percent="$2"
    arg=$3
    years=0

    while  [ $population -lt $4 ]
    do
      population=$(bc <<< "scale=0; $population + $population * $percent /100 + $arg " )
      (( years++ ))
    done

    echo $years
}

nbYear $1 $2 $3 $4
