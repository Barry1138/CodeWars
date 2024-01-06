function multiply(number){
  /*
  if the number is negative reduce the length by 1
  after converting to String else return the multiplied
  value of number and power raised to the number
  */
  
  if(number.toString().charAt(0)==='-')
    return(Math.pow(5,(number.toString().length)-1)*number);
  else
    return(Math.pow(5,(number.toString().length))*number);
}
