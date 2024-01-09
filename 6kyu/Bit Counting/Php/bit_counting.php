function countBits($n) 
{
   //decbin - Decimal to binary
  $bit = str_split(strval(decbin($n)));
  $sum = 0;
  foreach($bit as $value) {
    if($value == 1)
      $sum ++;
  }
  return($sum);
}
