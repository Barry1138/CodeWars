function duplicate_encode($word){
	$lower = strtolower($word);
  $newWord = "";
  $left = ")";
  $right = "(";
  
  for ($i=0;$i<strlen($lower);$i++) {
    if(substr_count($lower,$lower[$i]) >1)
      $newWord.=$left;
    else
      $newWord.=$right;
  }
  return($newWord);
}
