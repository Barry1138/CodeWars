<?php

function DNA_strand($dna) {
  $dna = str_split($dna);
  $complementaries = '';
  foreach($dna as $original){
    switch($original){
        case 'A': $original = 'T';
        break;
        case 'T': $original = 'A';
        break;
        case 'C': $original = 'G';
        break;
        case 'G': $original = 'C';
        break;
    }
    $complementaries.=$original;    
  }
  return $complementaries;
}
