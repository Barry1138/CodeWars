#!/bin/bash
res=""
i=1
while [ $i -le ${#1} ]
do
        char=$(echo $1 | cut -c $i)
        cl=$(echo $char | tr '[a-z]' '[A-Z]')
        sl=$(echo $char | tr '[A-Z]' '[a-z]')
        temp="$cl"
        j=1
        while [ $j -lt $i ]
        do
                temp="$temp$sl"
                ((++j))
        done
        ((++i))
        res="$res$temp-"
done

echo ${res::-1}
