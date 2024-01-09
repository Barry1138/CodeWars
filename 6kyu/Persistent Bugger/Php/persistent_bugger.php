function persistence(int $num): int {
  if ($num < 10) {
        return 0;
    }

    $array_num = str_split($num);

    $new_number = 9999;     // variable that is going to be updated with the new number after the multiplications

    $i = 0;
    while (strlen(strval($new_number)) > 1) {   // until the variable $new_number contains only 1 number...
        $new_number = 1;

        foreach ($array_num as $key => $number) {   // I multiply the numbers of the array $array_num among themselves
            $new_number *= $number;
        }
        $array_num = str_split($new_number);

        $i++;
    }

    return $i;
}
