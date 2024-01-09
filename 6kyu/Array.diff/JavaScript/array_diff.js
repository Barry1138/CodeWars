function arrayDiff(a, b) {
  let arr1 = [];
  if(b.length === 0 || a.length === 0) {
    return a;
  }else{
    arr1 = a.filter(num => !(b.includes(num)) );
    return arr1;
  }
}
