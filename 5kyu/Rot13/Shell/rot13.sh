res=''
echo  $1 | grep -o . | 
while read ch
do
  if [[ "$ch" =~ [a-zA-Z] ]]
  then

    num_in_alpha=$(printf "%d" "'$ch")
    num_in_alpha=$((num_in_alpha+13))

    if [[ "$ch" =~ [a-z] ]]
    then

      if ((num_in_alpha > 122))
      then 
        num_in_alpha=$((96 + (num_in_alpha)%122))
      fi

    elif [[ "$ch" =~ [A-Z] ]]
    then

      if ((num_in_alpha > 90))
      then 
        num_in_alpha=$((64 + (num_in_alpha)%90))
      fi
    fi

    new_ch="$(printf "%x" $num_in_alpha )"
    res="$res$(printf "\x$new_ch")"

  else

    if [[ "$res$ch" == "$res" ]]
    then
      res="$res "
    else
      res="$res$ch"
    fi

  fi
echo  $res
done
