function moveZeros(array $items): array {
    $arrayOfOthers = [];
    $arrayOfZero = [];
      foreach ($items as $i) {
        if($i === 0 || $i === 0.0) {
          array_push($arrayOfZero, intval($i));
        } else {
          array_push($arrayOfOthers, $i);
        }
      }
      return [...$arrayOfOthers, ...$arrayOfZero];
}
