#!/bin/bash

function remove_url_anchor() {
    url=$1
    function main {
        echo $url | cut -d "#" -f 1
    }
    main
}

remove_url_anchor "$@"
exit 0
