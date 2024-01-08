#!/bin/bash

containAllRots() {

    if [ $# -ne 2 ]; then
        echo "Error: Insufficient arguments provided."
        exit 1
    fi

    strng=$1
    arr=$2


    if [ -z "$strng" ]; then
        echo "true"
        exit 0
    fi


    for ((i = 0; i < ${#strng}; i++)); do
        rotated="${strng:i}${strng:0:i}"


        if [[ ! " $arr " =~ " $rotated " ]]; then
            echo "false"
            exit 0
        fi
    done

    echo "true"
}


containAllRots "$1" "$2"
