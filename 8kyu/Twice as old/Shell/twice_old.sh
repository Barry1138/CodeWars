#!/bin/sh

dad_years_old=$1
son_years_old=$2

echo $(($1-$2*2)) | sed 's/-//'

exit
