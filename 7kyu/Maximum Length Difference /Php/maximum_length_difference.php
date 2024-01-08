function mxdiflg($a1, $a2) {
    if (empty($a1) || empty($a2)) {
      return -1;
    }
  $a2 = array_map('strlen', $a2);
  $a1 = array_map('strlen', $a1);
  
  return max(abs(min($a2) - max($a1)), abs(max($a2)-min($a1)));
}
$s1 = ["hoqq", "bbllkw", "oox", "ejjuyy", "plmiis", "xxxzgpsssa", "xxwwkktt", "znnnnfqknaz", "qqquuhii", "dvvvwz"];
$s2 = ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"];

echo mxdiflg($s1, $s2);
