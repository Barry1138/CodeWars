let solve = (str,k, size = str.length - k) => {
  max = 0;
  for(var i = 0; i <= str.length - size; i += 1) 
    if( max < +(str.slice(i,i+size))) max = +(str.slice(i,i+size));
  return max;
}
