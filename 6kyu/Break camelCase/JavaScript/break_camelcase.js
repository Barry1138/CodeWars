const solution = (str) => {
  return str.split(/\s+|\_+|(?=[A-Z])/gm).join(' ')
}
