#!/bin/bash

isPhoneNumber() {
     if [ $# -ne 1 ]; then
         echo "Error: Insufficient argumens provided."
         exit 1
     fi
     
     phone=$1
     
     if [ ${#phone} -ne 14 ]; then
          echo "False"
          exit 0
     fi
     
     if [[ $phone =~ ^\([0-9]{3}\)\ [0-9]{3}-[0-9]{4}$ ]]; then
          echo "True"
      else
          echo "False"
     fi
}

isPhoneNumber "$1"
