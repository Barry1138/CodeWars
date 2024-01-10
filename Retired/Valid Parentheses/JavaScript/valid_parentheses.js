function validParentheses(parens) {
  //TODO
  const reg = /\(\)/g;
  while(reg.test(parens)) {
    parens = parens.replace(reg, '');
  }
  
  return parens === '';
}
