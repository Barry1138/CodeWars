#!/bin/bash

return_string () {
    name=$1
    [[ $name =~ ^[a-zA-Z]+$ ]] && echo "Hello, $name how are you doing today?" || \
    echo "Name should consist of letters only."
}

# Call the function
return_string $1
exit 0
