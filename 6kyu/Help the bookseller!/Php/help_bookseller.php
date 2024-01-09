function stockList($listOfArt, $listOfCat) {
  if (empty($listOfArt) OR empty($listOfCat)) return '';
  
  $result = [];
  foreach ($listOfCat as $cat) {
    $results[$cat] = 0;
  }
  
  foreach ($listOfArt as $art) {
    list($code, $qty) = explode(' ', $art);
    $cat = $code[0];
    
    if (array_key_exists($cat, $results)) {
      $results[$cat] += $qty;
    }
  }
  
  $formattedResults = [];
  foreach ($results as $cat => $qty) {
    $formattedResults[] = "($cat : $qty)";
  }
  
  return implode(' - ', $formattedResults);
}
