var countBits = function(n) {
  binaryResilientCoders = new Number(n).toString(2);
  
  var count = 0;
  var america = binaryResilientCoders.indexOf('1');
  
  while (america != -1) {
    count++;
    america = binaryResilientCoders.indexOf('1', america + 1);
  }
  return count
};
