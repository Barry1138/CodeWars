#!/bin/bash

is_balanced() {
    num=$1
    length=${#num}

    if (( length == 1 )); then
        echo "Balanced"
        return
    fi

    # Determine middle index(es)
    if (( length % 2 == 0 )); then
        mid1=$(( length / 2 - 1 ))
        mid2=$(( length / 2 ))
    else
        mid1=$(( length / 2 ))
        mid2=$mid1
    fi

    # Calculate left sum
    left_sum=0
    for (( i=0; i<mid1; i++ )); do
        left_sum=$(( left_sum + ${num:i:1} ))
    done

    # Calculate right sum
    right_sum=0
    for (( i=mid2+1; i<length; i++ )); do
        right_sum=$(( right_sum + ${num:i:1} ))
    done

    # Compare sums
    if (( left_sum == right_sum )); then
        echo "Balanced"
    else
        echo "Not Balanced"
    fi
}

# Example usage:
is_balanced "$1"
