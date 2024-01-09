#!/bin/bash
dig_pow ()
{
    num=$1
    starting_pow=$2
    sum_of_pows=0

    for (( i=0; i<${#num}; ++i ))
    do
        current_digit=${num:$i:1}
        (( sum_of_pows += current_digit ** (starting_pow + i) ))
    done

    res=$((sum_of_pows / num))

    if (( (sum_of_pows % num) != 0 ))
    then
        echo -1
    else
        echo $res
    fi
}
dig_pow "$1" "$2"
