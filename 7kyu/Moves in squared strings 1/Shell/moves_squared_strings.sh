#!/bin/bash

#will set internal field separator (IFS) to ','
IFS=','

vertMirror()
{
    arr=() #bash array
    for field 
    do
      arr+=( $(rev <<< $field) )
    done

    str=""
    for (( i=0; i < ${#arr[*]}; ++i))
    do
      str+=${arr[$i]}
      str+=$'\r'
    done

    echo $str
}

horMirror()
{
    arr=("$@") #bash array

    str=""
    for (( i=${#arr[*]}-1; i >= 0; --i))
    do
      str+=${arr[$i]}
      str+=$'\r'
    done

    echo $str
}

oper()
{
  $1 "${@:2}"
}

oper $1 $2
IFS=' '
