function spinWords(string $str): string {
  return implode(" ", array_map(function($value) {
    return strlen($value) > 4 ? strrev($value) : $value;
  }, explode(" ", $str)));
}
