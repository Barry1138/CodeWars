if [[ $(($2+1)) -le $(($1/2)) ]]; then
   echo $(($2 + $1/2))
else
  echo $(($2 - $1/2))
fi
