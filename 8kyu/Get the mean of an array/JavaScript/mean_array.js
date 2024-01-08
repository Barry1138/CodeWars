function getAverage(marks){
  return Math.floor(marks.reduce(function(a, b) {return a + b; })/marks.length)
}
