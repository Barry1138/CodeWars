password=$1

# [[ $password =~ (.*[\d]){1,}(.*[\w]){1,}(.*[A-Z]){1,}(.*){6,} ]] && echo "true" || echo

[[ "$password" =~ ^[[:alnum:]]{6,}$ &&
   "$password" =~ [[:upper:]] &&
   "$password" =~ [[:lower:]] &&
   "$password" =~ [[:digit:]] ]] && echo "true" || echo "false"
